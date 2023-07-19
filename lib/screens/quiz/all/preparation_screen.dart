import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/screens/quiz/all/mcq_sheet_screen.dart';
import 'package:help_book/utils/text_styles.dart';

import '../../../data/app_images.dart';
import '../../../global_widgets/buttons/custom_icon_button.dart';

class PreparationScreen extends StatelessWidget {
  const PreparationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            image: AppImages.backIcon,
                            color: AppColors.black,
                            width: 30,
                            height: 30,
                            imageColor: AppColors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Preparation ",
                              style:
                                  TextStyles.semiBoldTextStyle(fontSize: 14)),
                          Text("> 1st Year ",
                              style: TextStyles.semiBoldTextStyle(
                                  fontSize: 12,
                                  textColor: AppColors.lightGrey)),
                          Text("> FSC ",
                              style: TextStyles.boldTextStyle(
                                  fontSize: 12,
                                  textColor: AppColors.lightGrey)),
                          Text("> English",
                              style: TextStyles.boldTextStyle(
                                  fontSize: 12,
                                  textColor: AppColors.lightGrey)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Test',
                          style: TextStyles.semiBoldTextStyle(
                              textColor: AppColors.lightGrey),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(1),
                            border: Border(
                              bottom: BorderSide(
                                color: AppColors.green,
                                width: 3,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2.0),
                            child: Text(
                              'Preparation',
                              style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: AppColors.bgColor,
                  width: size.width,
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: ExpansionTile(
                            iconColor: AppColors.green,
                            // Change the arrow color
                            collapsedIconColor: AppColors.green,
                            title: Text(
                              'English Grammar',
                              style: TextStyles.boldTextStyle(
                                  textColor: AppColors.green),
                            ),
                            subtitle: Text(''),
                            controlAffinity: ListTileControlAffinity.leading,
                            childrenPadding: EdgeInsets.only(right: 70),
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'All',
                                style: TextStyles.semiBoldTextStyle(),
                              ),
                              Divider(
                                thickness: 1,
                                color: AppColors.lightGrey,
                              ),
                              Text(
                                'level 1',
                                style: TextStyles.semiBoldTextStyle(),
                              ),
                              Divider(
                                thickness: 1,
                                color: AppColors.lightGrey,
                              ),
                              Text(
                                'level 2',
                                style: TextStyles.semiBoldTextStyle(),
                              ),
                              Divider(
                                thickness: 1,
                                color: AppColors.lightGrey,
                              ),
                              Text(
                                'level 3',
                                style: TextStyles.semiBoldTextStyle(),
                              ),
                            ],
                          )),
                      SizedBox(height: 12),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const QuestionTitleTile();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionTitleTile extends StatelessWidget {
  const QuestionTitleTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 30,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                        "What they are doing does not seem ________ working.",
                        style: TextStyles.regularTextStyle(fontSize: 16)),
                  ),
                  const Icon(Icons.share, color: AppColors.lightGrey)
                ],
              ),
            ),
          ),
          Column(
            children: List.generate(
                mcqList[0].optionsList.length,
                (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10),
                          child: Text(mcqList[0].optionsList[index],
                              style: TextStyles.regularTextStyle(fontSize: 16)),
                        ),
                      ),
                    )),
          ),
          Container(
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: AppColors.white,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: AppColors.green),
                                onPressed: () {},
                                child: const Text("Answer")),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: AppColors.white,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: AppColors.green),
                                onPressed: () {},
                                child: const Text("Details")),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        color: AppColors.white,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: const BorderSide(
                                  width: 1.0,
                                  color: AppColors.green,
                                ),
                                elevation: 0,
                                backgroundColor: AppColors.white),
                            onPressed: () {},
                            child: const Icon(Icons.bookmark,
                                color: AppColors.green)),
                      ),
                    ],
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: AppColors.lightGrey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: size.width * .4,
                        height: 30,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  1
                              Row(
                                children: [
                                  Image.asset(AppImages.likeIcon),
                                  const SizedBox(width: 5),
                                  Text("12",
                                      style: TextStyles.mediumTextStyle(
                                          fontSize: 12,
                                          textColor: AppColors.lightGrey)),
                                ],
                              ),

                              SizedBox(
                                width: 5,
                              ),

                              // 2
                              Row(
                                children: [
                                  Image.asset(AppImages.sendIcon),
                                  const SizedBox(width: 5),
                                  Text("19",
                                      style: TextStyles.mediumTextStyle(
                                          fontSize: 12,
                                          textColor: AppColors.lightGrey)),
                                ],
                              ),

                              SizedBox(
                                width: 5,
                              ),

                              // 3
                              Row(
                                children: [
                                  Icon(Icons.bookmark_outline,
                                      color: AppColors.lightGrey),
                                  const SizedBox(width: 5),
                                  Text("19",
                                      style: TextStyles.mediumTextStyle(
                                          fontSize: 12,
                                          textColor: AppColors.lightGrey)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Theme(
                              data: ThemeData(
                                  unselectedWidgetColor: AppColors.lightGrey),
                              child: Checkbox(
                                  checkColor: AppColors.green,
                                  value: false,
                                  activeColor: AppColors.white,
                                  tristate: false,
                                  onChanged: (bool? value) {})),
                          Text(
                            'Don\'t show again',
                            style: TextStyles.regularTextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
