import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/utils/text_styles.dart';

class QuizMenuItem extends StatefulWidget {
  const QuizMenuItem({
    Key? key,
    required this.enabled,
    required this.title,
    required this.index,
  }) : super(key: key);

  final int index;
  final String title;
  final bool enabled;

  @override
  State<QuizMenuItem> createState() => _QuizMenuItemState();
}

class _QuizMenuItemState extends State<QuizMenuItem> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Container(
          decoration: widget.enabled ? const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(width: 2.0, color: AppColors.green),
            ),
          ) : const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(width: 2.0, color: AppColors.white),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.index == 0 ? 32 : 20.0, vertical: 5),
            child: Text(widget.title, style: TextStyles.regularTextStyle(fontSize: 12, textColor: widget.enabled ? AppColors.green : AppColors.lightGrey)),
          )),
    );
  }
}











