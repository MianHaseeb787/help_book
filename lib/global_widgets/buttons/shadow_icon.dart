import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';

class ShadowIcon extends StatelessWidget {
  final String image;
  const ShadowIcon({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Material(
          color: Colors.white,
          child: InkWell(
            splashColor: AppColors.lightGrey.withOpacity(.2),
            child: SizedBox(
              width: 35,
              height: 35,
              child: Image.asset(image),
            ),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
