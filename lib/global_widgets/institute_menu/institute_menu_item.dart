import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/utils/text_styles.dart';

class InstituteMenuItem extends StatelessWidget {
  const InstituteMenuItem({
    Key? key,
    required this.enabled,
    required this.title,
    required this.index,
  }) : super(key: key);

  final int index;
  final String title;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0, right: 7),
      child: Text(title, style: TextStyles.regularTextStyle(fontSize: 12, textColor: enabled ? AppColors.green : AppColors.lightGrey)),
    );
  }
}






