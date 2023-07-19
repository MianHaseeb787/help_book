import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/quiz_items_model.dart';
import 'package:help_book/global_widgets/quiz_menu/quiz_menu_item.dart';

class QuizMenu extends StatefulWidget {
  const QuizMenu({
    Key? key,
    required this.currentIndex,
    required this.onChanged,
  }) : super(key: key);
  final int currentIndex;
  final Function(int index) onChanged;

  @override
  State<QuizMenu> createState() => _QuizMenuState();
}

class _QuizMenuState extends State<QuizMenu> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      shape: const CircularNotchedRectangle(),
      color: AppColors.bgColor,
      child: Container(
        padding:  const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius:  BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),

      ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            quizItems.length,
                (index) => InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              radius: 20,
              onTap: () {
                widget.onChanged(index);
                _currentIndex = index;
              },
              child: QuizMenuItem(
                title: quizItems[index].title,
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











