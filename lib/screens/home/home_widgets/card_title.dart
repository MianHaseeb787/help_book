import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/global_widgets/buttons/custom_button_without_icon.dart';
import 'package:help_book/global_widgets/buttons/custom_icon_button.dart';
import 'package:help_book/utils/text_styles.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomIconButton(image: AppImages.profile, padding: 0, color: Colors.white, hasImageColor: false, height: 60, width: 60,),
        const SizedBox(width: 5),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Johan Smith", style: TextStyles.mediumTextStyle()),
                  const SizedBox(width: 5),
                  Image.asset(AppImages.infoIcon)
                ],
              ),
              Text("57 min ago", style: TextStyles.regularTextStyle(fontSize: 13, textColor: AppColors.lightGrey))
            ],
          ),
        ),
        SizedBox(
            height: 32,
            width: 70,
            child: CustomButtonWithoutIcon(text: 'Follow', onPressed: () {}, bgColor: AppColors.white,
                borderColor: AppColors.green)),
      ],
    );
  }
}
