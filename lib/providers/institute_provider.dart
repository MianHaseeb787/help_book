import 'package:flutter/material.dart';

class InstituteProvider extends ChangeNotifier {

  int selectedIndex = 0;

  void changeIndex(int index) {
    if (selectedIndex == index) {
      return;
    }
    selectedIndex = index;
    notifyListeners();
  }

}













