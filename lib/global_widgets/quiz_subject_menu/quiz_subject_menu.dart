import 'package:flutter/material.dart';
import 'package:help_book/data/all_subject_model.dart';
import 'package:help_book/global_widgets/quiz_subject_menu/quiz_subject_menu_item.dart';

class QuizSubjectMenu extends StatefulWidget {
  const QuizSubjectMenu({
    Key? key,
    required this.currentIndex,
    required this.onChanged,
  }) : super(key: key);
  final int currentIndex;
  final Function(int index) onChanged;

  @override
  State<QuizSubjectMenu> createState() => _QuizSubjectMenuState();
}

class _QuizSubjectMenuState extends State<QuizSubjectMenu> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      shape: const CircularNotchedRectangle(),
      color: _currentIndex == 4 ? Colors.white : const Color(0xFFF5F3F3),
      child: Container(
        height: 50,
        padding:  const EdgeInsets.only(left: 16, right: 16, top: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: List.generate(
            allSubjectsList.length,
                (index) => InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              radius: 20,
              onTap: () {
                print(allSubjectsList.length);
                _currentIndex = index;
                widget.onChanged(index);
                setState(() {});
              },
              child: QuizSubjectMenuItem(
                title: allSubjectsList[index],
                enabled: widget.currentIndex == index,
                index: index,
              ),
            ),
          ),
        ),
      ),
    );
  }
}










