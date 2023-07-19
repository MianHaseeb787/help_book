import 'package:flutter/material.dart';

class DashboardProvider extends ChangeNotifier {

  int selectedIndex = 0;

  void changeIndex(int index) {
    if (selectedIndex == index) {
      return;
    }
    selectedIndex = index;
    notifyListeners();
  }

}













