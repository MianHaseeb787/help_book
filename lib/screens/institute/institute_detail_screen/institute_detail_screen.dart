import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/global_widgets/institute_menu/institute_menu.dart';
import 'package:help_book/providers/institute_provider.dart';
import 'package:help_book/screens/institute/institute_detail_screen/institute_post/institute_post_screen.dart';
import 'package:provider/provider.dart';
import 'institute_home/institute_home_screen.dart';
import 'institute_review/institute_review_screen.dart';

class InstituteDetailScreen extends StatefulWidget {
  const InstituteDetailScreen({Key? key}) : super(key: key);

  @override
  State<InstituteDetailScreen> createState() => _InstituteDetailScreenState();
}

class _InstituteDetailScreenState extends State<InstituteDetailScreen> {

  Widget getDetailScreen(int index) {
    Widget widget = Container();
    switch (index) {
      case 0:
        widget =  const InstituteHomeScreen();
        break;
      case 1:
        widget =  const InstitutePostScreen();
        break;
      case 2:
        widget = const Text("Video Screen", style: TextStyle(color: Colors.black));
        break;
      case 3:
        widget = const InstituteReviewScreen();
        break;
      case 4:
        widget = const Text("Notification Screen", style: TextStyle(color: Colors.black));
        break;
    }
    return widget;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Consumer<InstituteProvider>(
            builder: (ctx, provider, widget) => InstituteMenu(
              currentIndex: provider.selectedIndex,
              onChanged: (int index) => context.read<InstituteProvider>().changeIndex(index),
            ),
          ),
          getDetailScreen(context.watch<InstituteProvider>().selectedIndex),
        ],
      ),
    );
  }
}








