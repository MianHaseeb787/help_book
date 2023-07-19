import 'package:flutter/material.dart';
import 'package:help_book/global_widgets/custom_app_bars/custom_app_bar.dart';
import 'package:help_book/global_widgets/dashboard_menu/dashboard_menu.dart';
import 'package:help_book/providers/dashboard_provider.dart';
import 'package:provider/provider.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({Key? key, required this.controller, required this.onTapNotification, required this.onTapChat}) : super(key: key);
  final TextEditingController controller;
  final VoidCallback onTapNotification;
  final VoidCallback onTapChat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(controller: controller, onTapChat: onTapChat, onTapNotification: onTapNotification),
        Consumer<DashboardProvider>(
          builder: (ctx, provider, widget) => DashboardMenu(
            currentIndex: provider.selectedIndex,
            onChanged: (int index) =>context.read<DashboardProvider>().changeIndex(index),
          ),
        ),
      ],
    );
  }
}










