import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/utils/text_styles.dart';

class HomeSearchField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double height;
  const HomeSearchField({
    super.key, required this.hintText, required this.controller, this.height = 36,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          Container(
              alignment: Alignment.center,
              width: 35,
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Image.asset(AppImages.searchIcon),
              )),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(height: 25, width: 1.5, child: Image.asset(AppImages.line, fit: BoxFit.cover)),
          ),
          Flexible(
            child: TextFormField(
              style: const TextStyle(color: Colors.black, fontSize: 13),
              decoration:  InputDecoration(
                  contentPadding: const EdgeInsets.only(right: 20, bottom: 13),
                  hintText: hintText,
                  border: InputBorder.none,
                  hintStyle: TextStyles.regularTextStyle(textColor: const Color(0xFFC4C2C2), fontSize: 12)
              ),
            ),
          )
        ],
      ),
    );
  }
}



