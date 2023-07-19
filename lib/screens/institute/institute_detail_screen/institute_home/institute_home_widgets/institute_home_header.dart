import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/global_widgets/buttons/custom_button_without_icon.dart';
import 'package:help_book/global_widgets/buttons/shadow_icon.dart';
import 'package:help_book/screens/home/home_widgets/read_more_widget.dart';
import 'package:help_book/utils/text_styles.dart';

class InstituteHomeHeader extends StatelessWidget {
  const InstituteHomeHeader({
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
                      ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(AppImages.instituteImg)),
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
                const SizedBox(height: 8),

                Row(
                  children: [
                    Image.asset(AppImages.ratingIcon),
                    const SizedBox(width: 5),
                    Text("4.7", style: TextStyles.mediumTextStyle()),
                    const SizedBox(width: 10),
                    Container(height: 16, color: AppColors.black, width: 1),
                    const SizedBox(width: 10),
                    Text("12,457", style: TextStyles.mediumTextStyle()),
                    const SizedBox(width: 5),
                    Text("followers", style: TextStyles.regularTextStyle()),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    ShadowIcon(image: AppImages.aboutIcon),
                    SizedBox(width: 5),
                    ShadowIcon(image: AppImages.phoneIcon),
                    SizedBox(width: 5),
                    ShadowIcon(image: AppImages.locationIcon2),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text("About", style: TextStyles.boldTextStyle()),
                    const SizedBox(width: 10),
                    Text("Contact", style: TextStyles.boldTextStyle(textColor: AppColors.lightGrey)),
                  ],
                ),
                const SizedBox(height: 15),
                const ReadMoreWidget(
                    color: AppColors.mediumBlack,
                    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
                const SizedBox(height: 8),
              ],
            )
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}

