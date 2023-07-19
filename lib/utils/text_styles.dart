import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_font_family.dart';

class TextStyles {
  static TextStyle regularTextStyle(
      {Color textColor = AppColors.black,
      double fontSize = 14,
      String fontFamily = AppFontFamily.regularPoppins}) {
    return TextStyle(
        color: textColor,
        fontSize: fontSize,
        height: 1.35,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily);
  }

  static TextStyle mediumTextStyle(
      {Color textColor = AppColors.black,
      double fontSize = 16,
      String fontFamily = AppFontFamily.mediumPoppins}) {
    return TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily);
  }

  static TextStyle semiBoldTextStyle({
    Color textColor = AppColors.black,
    double fontSize = 16,
    String fontFamily = AppFontFamily.semiBoldPoppins,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      fontFamily: fontFamily,
    );
  }

  static TextStyle boldTextStyle(
      {Color textColor = AppColors.black,
      double fontSize = 16,
      String fontFamily = AppFontFamily.boldPoppins}) {
    return TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily);
  }
}
