import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/utils/text_styles.dart';

class DashboardMenuItem extends StatelessWidget {
  const DashboardMenuItem({
    Key? key,
    required this.image,
    required this.enabled,
    required this.title,
    required this.index,
  }) : super(key: key);

  final String image;
  final int index;
  final String title;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: enabled ?  AppColors.lightGrey.withOpacity(.2) : Colors.transparent,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
              color:
              enabled ? AppColors.green : AppColors.lightGrey,
              height: index == 0  ? 16 : index == 1 ? 18 : index == 2 ?  14 : index == 3 ? 18 : index == 4 ? 18 : 13,
            ),
          ),
          Text(title, style: TextStyles.regularTextStyle(fontSize: 12, textColor: enabled ? AppColors.green : AppColors.lightGrey)),
        ],
      ),
    );
  }
}









