import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/screens/institute/institute_detail_screen/institute_home/institute_home_widgets/institute_home_header.dart';
import 'package:help_book/screens/institute/institute_detail_screen/institute_home/institute_home_widgets/institute_home_tile.dart';
import 'package:help_book/screens/institute/institute_detail_screen/institute_home/institute_home_widgets/institute_post.dart';


class InstituteHomeScreen extends StatelessWidget {
  const InstituteHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: AppColors.bgColor,
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
            children:  [
              const InstituteHomeHeader(),
              InstituteHomeTile(image: AppImages.programIcon, onPress: () {}, title: 'Program'),
              const SizedBox(height: 10),
              InstituteHomeTile(image: AppImages.scholarshipIcon, onPress: () {}, title: 'Scholarship'),
              const SizedBox(height: 10),
              InstituteHomeTile(image: AppImages.admissionIcon, onPress: () {}, title: 'Admission'),
              const SizedBox(height: 10),
              InstituteHomeTile(image: AppImages.resultsIcon, onPress: () {}, title: 'Results'),
              const SizedBox(height: 10),
              InstituteHomeTile(image: AppImages.branchesIcon, onPress: () {}, title: 'Branches'),
              const SizedBox(height: 10),
              InstituteHomeTile(image: AppImages.alumniIcon, onPress: () {}, title: 'Alumni'),
              const SizedBox(height: 10),
              InstituteHomeTile(image: AppImages.amenityIcon, onPress: () {}, title: 'Amenities'),
              const SizedBox(height: 10),
              ListView.builder(
                padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const InstitutePost();
                  })
            ],
        ),
      ),
    );
  }
}
















