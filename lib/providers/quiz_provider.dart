import 'package:flutter/material.dart';

class QuizProvider extends ChangeNotifier {

  int selectedIndex = 0;
  int selectedLevelTabIndex = 0;
  int selectedSubject = 0;

  void changeIndex(int index) {
    if (selectedIndex == index) {
      return;
    }
    selectedIndex = index;
    notifyListeners();
  }

  void changeTab(int index) {
    if (selectedLevelTabIndex == index) {
      return;
    }
    selectedLevelTabIndex = index;
    notifyListeners();
  }

  void changeSubject(int index) {
    if (selectedSubject == index) {
      return;
    }
    selectedSubject = index;
    notifyListeners();
  }

}
