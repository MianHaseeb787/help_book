import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/utils/text_styles.dart';

class InstituteHomeTile extends StatelessWidget {
  final String image;
  final VoidCallback onPress;
  final String title;
  const InstituteHomeTile({Key? key, required this.image, required this.onPress, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: Colors.white,
      child: InkWell(
        splashColor: AppColors.lightGrey.withOpacity(.1),
        onTap: onPress,
        child: ListTile(
          minLeadingWidth : 10,
          leading: Image.asset(image, color: const Color(0xFFB0AFAF)),
          title: Text(title, style: TextStyles.regularTextStyle()),
          trailing: Image.asset(AppImages.trailingIcon),
        ),
      ),
    );
  }
}

