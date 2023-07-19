import 'package:flutter/material.dart';
import 'package:help_book/data/all_subject_model.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/global_widgets/buttons/custom_button_without_icon.dart';
import 'package:help_book/global_widgets/buttons/custom_icon_button.dart';
import 'package:help_book/screens/quiz/all/preparation_screen.dart';
import 'package:help_book/screens/quiz/all/select_level_screen.dart';
import 'package:help_book/utils/text_styles.dart';

class QuizSectionScreen extends StatelessWidget {
  const QuizSectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Container(
          color: AppColors.bgColor,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomIconButton(onTap: () {
                        Navigator.pop(context);
                      }, image: AppImages.backIcon, color: AppColors.black, width: 32, height: 32, imageColor: AppColors.green,),
                      const SizedBox(width: 10),
                      Text("Intermediate", style: TextStyles.boldTextStyle(textColor: AppColors.black)),
                      const Icon(Icons.arrow_forward_ios_sharp, color: AppColors.lightGrey, size: 15,),
                      Text("1st Year", style: TextStyles.regularTextStyle(textColor: AppColors.lightGrey)),
                      const Icon(Icons.arrow_forward_ios_sharp, color: AppColors.lightGrey, size: 15,),
                      Text("Fsc", style: TextStyles.regularTextStyle(textColor: AppColors.lightGrey)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  color: AppColors.bgColor,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(allSubjectsList.length, (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(allSubjectsList[index], style: TextStyles.mediumTextStyle(textColor: AppColors.lightBlack)),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                        height: 25,
                                        child: CustomButtonWithoutIcon(text: 'Quiz', onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SelectLevelScreen()));
                                        }, bgColor: Colors.transparent, borderColor: AppColors.green, textColor: AppColors.lightBlack)),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                        height: 25, child: CustomButtonWithoutIcon(text: 'Preparations', onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PreparationScreen()));
                                    }, bgColor: Colors.transparent, borderColor: AppColors.green, textColor: AppColors.lightBlack, textHorizontalPadding: 10)),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                        height: 25, child: CustomButtonWithoutIcon(text: 'Chapter Vise', onPressed: () {  }, bgColor: Colors.transparent, borderColor: AppColors.green, textColor: AppColors.lightBlack, textHorizontalPadding: 10)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}





