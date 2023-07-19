import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/providers/dashboard_provider.dart';
import 'package:help_book/screens/dashboard/dashboard_widget/dashboard_header.dart';
import 'package:help_book/screens/home/home_screen.dart';
import 'package:help_book/screens/institute/institute_screen.dart';
import 'package:help_book/screens/quiz/quiz_screen.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  Widget getCurrentScreen(int index) {
    Widget widget = Container();
    switch (index) {
      case 0:
        widget =  const HomeScreen();
        break;
      case 1:
        widget =  const Text("Tutor Screen", style: TextStyle(color: Colors.black));
        break;
      case 2:
        widget = const Text("Video Screen", style: TextStyle(color: Colors.black));
        break;
      case 3:
        widget = const InstituteScreen();
        break;
      case 4:
        widget = const QuizScreen();
        break;
      case 5:
        widget = const Text("Menu Screen", style: TextStyle(color: Colors.black));
        break;
    }
    return widget;
  }

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Container(
          color: AppColors.bgColor,
          child: Column(
            children:  [
              DashboardHeader(controller: controller, onTapNotification: () {}, onTapChat: () {}),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: getCurrentScreen(context.watch<DashboardProvider>().selectedIndex),
                )),
            ],
          ),
        ),
      ),
    );
  }
}























