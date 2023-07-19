import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/screens/institute/institute_detail_screen/institute_review/institute_review_screen.dart';
import 'package:help_book/screens/institute/institute_detail_screen/institute_review/institute_review_widgets/create_review.dart';
import 'package:help_book/utils/text_styles.dart';

class ReviewRecommendWidget extends StatelessWidget {
  const ReviewRecommendWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 1, color: AppColors.white)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Do you recommend\nUniversity of Agriculture ?", style: TextStyles.boldTextStyle()),
                InkWell(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return const CreateReview();
                      },
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green
                    ),
                    child: Image.asset(AppImages.editIcon),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 10),
                Text("4.6", style: TextStyles.boldTextStyle(fontSize: 22)),
                const SizedBox(width: 28),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Average Ratings", style: TextStyles.boldTextStyle()),
                    const SizedBox(height: 5),
                    Row(
                      children:  [
                        const BuildRatingStars(color: AppColors.yellow),
                        const BuildRatingStars(color: AppColors.yellow),
                        const BuildRatingStars(color: AppColors.yellow),
                        const BuildRatingStars(color: AppColors.yellow),
                        const BuildRatingStars(color: AppColors.lightGrey),
                        const SizedBox(width: 20),
                        Text("(1590 Review)", style: TextStyles.regularTextStyle(textColor: AppColors.lightGrey))
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children:  [
                const BuildRatingStars(color: AppColors.yellow),
                const BuildRatingStars(color: AppColors.yellow),
                const BuildRatingStars(color: AppColors.yellow),
                const BuildRatingStars(color: AppColors.yellow),
                const BuildRatingStars(color: AppColors.yellow),
                const SizedBox(width: 15),
                Container(width: 150, height: 5, decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(30)
                ),),
                const SizedBox(width: 10),
                Text("100%", style: TextStyles.regularTextStyle(textColor: AppColors.lightGrey))
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children:  [
                const BuildRatingStars(color: AppColors.yellow),
                const BuildRatingStars(color: AppColors.yellow),
                const BuildRatingStars(color: AppColors.yellow),
                const BuildRatingStars(color: AppColors.yellow),
                const BuildRatingStars(color: AppColors.lightGrey),
                const SizedBox(width: 15),
                Container(width: 150, height: 5, decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(30)
                ),),
                const SizedBox(width: 10),
                Text("80%", style: TextStyles.regularTextStyle(textColor: AppColors.lightGrey))
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children:  [
                const BuildRatingStars(color: AppColors.yellow),
                const BuildRatingStars(color: AppColors.yellow),
                const BuildRatingStars(color: AppColors.lightGrey),
                const BuildRatingStars(color: AppColors.lightGrey),
                const BuildRatingStars(color: AppColors.lightGrey),
                const SizedBox(width: 15),
                Container(width: 150, height: 5, decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(30)
                ),),
                const SizedBox(width: 10),
                Text("60%", style: TextStyles.regularTextStyle(textColor: AppColors.lightGrey))
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children:  [
                const BuildRatingStars(color: AppColors.lightGrey),
                const BuildRatingStars(color: AppColors.lightGrey),
                const BuildRatingStars(color: AppColors.lightGrey),
                const BuildRatingStars(color: AppColors.lightGrey),
                const BuildRatingStars(color: AppColors.lightGrey),
                const SizedBox(width: 15),
                Container(width: 150, height: 5, decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(30)
                ),),
                const SizedBox(width: 10),
                Text("0%", style: TextStyles.regularTextStyle(textColor: AppColors.lightGrey))
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children:  [
                const BuildRatingStars(color: AppColors.lightGrey),
                const BuildRatingStars(color: AppColors.lightGrey),
                const BuildRatingStars(color: AppColors.lightGrey),
                const BuildRatingStars(color: AppColors.lightGrey),
                const BuildRatingStars(color: AppColors.lightGrey),
                const SizedBox(width: 15),
                Container(width: 150, height: 5, decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(30)
                ),),
                const SizedBox(width: 10),
                Text("0%", style: TextStyles.regularTextStyle(textColor: AppColors.lightGrey))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
