import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/utils/text_styles.dart';


class CustomButtonWithoutIcon extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double textVerticalPadding;
  final double textHorizontalPadding;
  final Color textColor;
  final Color bgColor;
  final Color borderColor;

  const CustomButtonWithoutIcon({Key? key, required this.text, required this.onPressed, this.textVerticalPadding = 0, this.textHorizontalPadding = 0, this.textColor = AppColors.green, this.bgColor = AppColors.green, this.borderColor = AppColors.green}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.zero,
        backgroundColor: bgColor,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(width: 1, color: borderColor)
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: textVerticalPadding, horizontal: textHorizontalPadding),
        child:
            Text(text, style: TextStyles.mediumTextStyle(textColor: textColor, fontSize: 12)),
      ),
    );
  }
}





class CustomButtonWithOnlyIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double textVerticalPadding;
  final double textHorizontalPadding;
  final Color textColor;
  final Color bgColor;
  final Color borderColor;

  const CustomButtonWithOnlyIcon({Key? key, required this.icon, required this.onPressed, this.textVerticalPadding = 0, this.textHorizontalPadding = 0, this.textColor = AppColors.green, this.bgColor = AppColors.green, this.borderColor = AppColors.green}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.zero,
        backgroundColor: bgColor,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(width: 1, color: borderColor)
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: textVerticalPadding, horizontal: textHorizontalPadding),
        child:
         Icon(icon, size: 15, color: textColor))
    );
  }
}

