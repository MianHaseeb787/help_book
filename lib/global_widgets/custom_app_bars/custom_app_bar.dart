import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/global_widgets/buttons/custom_icon_button.dart';
import 'package:help_book/global_widgets/text_fields/home_text_field.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.controller, required this.onTapNotification, required this.onTapChat}) : super(key: key);
  final TextEditingController controller;
  final VoidCallback onTapNotification;
  final VoidCallback onTapChat;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children:  [
                 const CustomIconButton(height: 60, width: 60, padding: 0, image: AppImages.profile, hasImageColor: false, color: Colors.white,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0, right: 0),
                    child: HomeSearchField(hintText: 'Type Here', controller: controller),
                  ),
                ),
                const CustomIconButton(image: AppImages.notificationIcon, color: AppColors.white, imageColor: AppColors.green),
                const CustomIconButton(image: AppImages.chatIcon, color: AppColors.white, imageColor: AppColors.green)
              ],
            ),
          ),
        ],
      ),
    );
  }
}








