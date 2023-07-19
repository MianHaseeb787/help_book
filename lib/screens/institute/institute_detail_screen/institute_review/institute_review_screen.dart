import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/screens/institute/institute_detail_screen/institute_review/institute_review_widgets/review.dart';
import 'package:help_book/screens/institute/institute_detail_screen/institute_review/institute_review_widgets/review_recommend_widget.dart';

class InstituteReviewScreen extends StatelessWidget {
  const InstituteReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          color: AppColors.bgColor,
          child: Column(
            children: [
              const SizedBox(height: 12),
              const ReviewRecommendWidget(),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Review();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}




class BuildRatingStars extends StatelessWidget {
  final Color color;
  const BuildRatingStars({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImages.ratingIcon, color: color, height: 10);
  }
}




// class CardTile extends StatelessWidget {
//   const CardTile({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         const CustomIconButton(image: AppImages.profile, padding: 0, color: Colors.white, hasImageColor: false, height: 60, width: 60,),
//         const SizedBox(width: 5),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 children: [
//                   Text("Johan Smith", style: TextStyles.mediumTextStyle()),
//                   const SizedBox(width: 5),
//                   Text("rated it", style: TextStyles.regularTextStyle()),
//                   const SizedBox(width: 5),
//                   Expanded(
//                     child: Row(
//                       children: const [
//                          BuildRatingStars(color: AppColors.yellow),
//                          BuildRatingStars(color: AppColors.yellow),
//                          BuildRatingStars(color: AppColors.yellow),
//                          BuildRatingStars(color: AppColors.yellow),
//                          BuildRatingStars(color: AppColors.lightGrey),
//                       ],
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       elevation: 0,
//                       shape: const CircleBorder(),
//                       padding: const EdgeInsets.all(5),
//                     ),
//                     child: const Icon(Icons.delete, color: Colors.redAccent),
//                   )
//                 ],
//               ),
//               Row(
//                 children: [
//                   Text("Jan 22", style: TextStyles.regularTextStyle(fontSize: 13, textColor: AppColors.lightGrey)),
//                   const SizedBox(width: 5),
//                   Image.asset(AppImages.infoIcon)
//                 ],
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
//






