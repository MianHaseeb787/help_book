import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';


class CustomIconButton extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  final Color color;
  final Color imageColor;
  final bool hasImageColor;
  final double padding;
  final VoidCallback? onTap;
  const CustomIconButton({Key? key, this.height = 36, this.width = 36, required this.image, required this.color, this.imageColor = AppColors.white, this.hasImageColor = true, this.padding = 8, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.transparent, // Button color
        child: InkWell(
          splashColor: AppColors.bgColor, // Splash color
          onTap: onTap,
          child: SizedBox(width: width, height: height, child: Padding(
            padding: EdgeInsets.all(padding),
            child: hasImageColor ? Image.asset(image, color: imageColor) : Image.asset(image),
          )),
        ),
      ),
    );
  }
}

