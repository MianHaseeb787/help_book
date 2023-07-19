import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/screens/home/home_widgets/read_more_widget.dart';
import 'package:help_book/screens/home/home_widgets/social_icons.dart';
import 'package:help_book/screens/institute/institute_detail_screen/institute_home/institute_home_widgets/institute_post_tile.dart';

class InstitutePostWidget extends StatelessWidget {
  const InstitutePostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(color: AppColors.bgColor, height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              const InstitutePostTile(),
              const SizedBox(height: 10),
              const ReadMoreWidget(
                  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", color: Colors.black),
              const SizedBox(height: 5),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(AppImages.collegePostImage),
              ),
              const SizedBox(height: 2),
              const SocialIcons(),
            ],
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
