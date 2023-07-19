import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/global_widgets/buttons/custom_button_without_icon.dart';
import 'package:help_book/utils/text_styles.dart';

class CreateReview extends StatelessWidget {
  const CreateReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: .7,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
        decoration: const BoxDecoration(
            color: AppColors.bgColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(25)
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Write a review", style: TextStyles.boldTextStyle()),
              const SizedBox(height: 20),
              Image.asset(AppImages.instituteLogo),
              const SizedBox(height: 20),
              Text("University of Agriculture", style: TextStyles.boldTextStyle()),
              const SizedBox(height: 10),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                unratedColor: AppColors.lightGrey,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 30,
                itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                onRatingUpdate: (rating) {},
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("write a comment", style: TextStyles.boldTextStyle()),
                  Text("Max 250 words", style: TextStyles.mediumTextStyle(textColor: AppColors.lightGrey)),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                ),
                height: 130,
                child: TextFormField(
                  minLines: 2,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    hintText: 'Comment ...',
                    hintStyle: TextStyle(
                        color: Colors.grey
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: CustomButtonWithoutIcon(text: 'Submit Review', onPressed: () {  }, textColor: AppColors.white))
            ],
          ),
        ),
      ),
    );
  }
}
