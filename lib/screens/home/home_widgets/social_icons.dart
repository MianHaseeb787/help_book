import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/global_widgets/buttons/custom_icon_button.dart';
import 'package:help_book/utils/text_styles.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomIconButton(image: AppImages.likeIcon, imageColor: AppColors.lightGrey, color: Colors.white, height: 25, width: 25),
        Text("12", style: TextStyles.regularTextStyle(textColor: AppColors.lightGrey, fontSize: 12)),
        const SizedBox(width: 20),

        const CustomIconButton(image: AppImages.commentIcon, imageColor: AppColors.lightGrey, color: Colors.white, height: 25, width: 25),
        Text("12", style: TextStyles.regularTextStyle(textColor: AppColors.lightGrey, fontSize: 12)),
        const SizedBox(width: 20),

        const CustomIconButton(image: AppImages.sendIcon, imageColor: AppColors.lightGrey, color: Colors.white, height: 25, width: 25),
        Text("12", style: TextStyles.regularTextStyle(textColor: AppColors.lightGrey, fontSize: 12)),
        const SizedBox(width: 20),
      ],
    );
  }
}
