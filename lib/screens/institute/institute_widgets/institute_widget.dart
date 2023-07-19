import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/global_widgets/buttons/custom_button_without_icon.dart';
import 'package:help_book/utils/text_styles.dart';

class InstituteWidget extends StatelessWidget {
  const InstituteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(color: AppColors.bgColor, height: 12),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                  child: Stack(
                    children: [
                      Image.asset(AppImages.instituteImg, ),
                      Positioned(
                          top: 90,
                          left: 32,
                          child: Image.asset(AppImages.instituteLogo)),
                      Positioned(
                        top: 145,
                        right: 0,
                        child: SizedBox(
                            height: 32,
                            width: 70,
                            child: CustomButtonWithoutIcon(text: 'Follow', onPressed: () {}, bgColor: AppColors.white,
                                borderColor: AppColors.green)),
                      ),

                    ],
                  ),
                ),
                Text("University of Agriculture", style: TextStyles.boldTextStyle()),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Text("Peshawar", style: TextStyles.regularTextStyle(fontSize: 13, textColor: AppColors.mediumBlack)),
                    const SizedBox(width: 10),
                    Image.asset(AppImages.locationIcon)
                  ],
                ),
                const SizedBox(height: 5),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fringilla aliquet congue. Cras tellus leo, pulvinar at leo ac, vulputate pretium massa.", style: TextStyles.regularTextStyle(fontSize: 13, textColor: AppColors.mediumBlack)),
                const SizedBox(height: 8),
                Text("12,457 followers", style: TextStyles.regularTextStyle(fontSize: 13, textColor: AppColors.mediumBlack)),
              ],
            )
        ),
        const SizedBox(height: 12)
      ],
    );
  }
}