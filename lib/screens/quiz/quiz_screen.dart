import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/data/quiz_subject_model.dart';
import 'package:help_book/global_widgets/buttons/custom_button_without_icon.dart';
import 'package:help_book/global_widgets/quiz_menu/quiz_menu.dart';
import 'package:help_book/global_widgets/quiz_subject_menu/quiz_subject_menu.dart';
import 'package:help_book/providers/quiz_provider.dart';
import 'package:help_book/screens/quiz/all/all_tab_screen.dart';
import 'package:help_book/utils/text_styles.dart';
import 'package:provider/provider.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  Widget getCurrentScreen(int index) {
    Widget widget = Container();
    switch (index) {
      case 0:
        widget =  const AllTab();
        break;
      case 1:
        widget =  const Text("Incoming Screen", style: TextStyle(color: Colors.black));
        break;
    }
    return widget;
  }

  @override
  void initState() {
    context.read<QuizProvider>().selectedIndex = 0;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<QuizProvider>(
          builder: (ctx, provider, widget) => QuizMenu(
            currentIndex: provider.selectedIndex,
            onChanged: (int index) => context.read<QuizProvider>().changeIndex(index),
          ),
        ),
        Expanded(child: getCurrentScreen(context.watch<QuizProvider>().selectedIndex))
      ],
    );
  }
}




















