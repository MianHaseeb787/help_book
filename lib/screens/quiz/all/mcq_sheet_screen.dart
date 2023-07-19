import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/global_widgets/buttons/custom_button_without_icon.dart';
import 'package:help_book/global_widgets/buttons/custom_icon_button.dart';
import 'package:help_book/screens/quiz/all/quiz_result_screen.dart';
import 'package:help_book/utils/text_styles.dart';

class MCQSheetScreen extends StatefulWidget {
  const MCQSheetScreen({Key? key}) : super(key: key);

  @override
  State<MCQSheetScreen> createState() => _MCQSheetScreenState();
}

class _MCQSheetScreenState extends State<MCQSheetScreen> {
  int _currentIndex = 0;

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void pageChanged(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.bounceIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 15),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // CustomIconButton(
                          //   onTap: () {
                          //     Navigator.pop(context);
                          //   },
                          //   image: AppImages.backIcon,
                          //   color: AppColors.black,
                          //   width: 32,
                          //   height: 32,
                          //   imageColor: AppColors.green,
                          // ),
                          Text("English Grammer",
                              style: TextStyles.boldTextStyle(
                                  textColor: AppColors.lightGrey)),
                          // Container(width: 42),

                          Container(
                            alignment: Alignment.center,
                            width: size.width * .15,
                            height: 30,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("1/60",
                                  style: TextStyles.boldTextStyle()),
                            ),
                          ),
                          Container(
                            width: size.width * .3,
                            height: 30,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(AppImages.coinsIcon),
                                  const SizedBox(width: 10),
                                  Text("200", style: TextStyles.boldTextStyle())
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: LinearProgressIndicator(
                              color: AppColors.green,
                              backgroundColor: AppColors.lightGrey,
                              value: 0.6,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                              flex: 0,
                              child: Text("00:16",
                                  style: TextStyles.regularTextStyle())),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  color: AppColors.bgColor,
                  width: double.infinity,
                  child: Column(
                    children: [
                      // Text("English Grammar",
                      //     style: TextStyles.boldTextStyle(
                      //         textColor: AppColors.green)),
                      const SizedBox(height: 10),
                      McqInfoTile(size: size),
                      const SizedBox(height: 15),
                      Expanded(
                        child: PageView.builder(
                            onPageChanged: (index) {},
                            controller: pageController,
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return const QuestionTitleTile();
                            }),
                      ),

                      // Row for bookmark, share, like and Timer
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width * .5,
                            height: 30,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  //  1
                                  Row(
                                    children: [
                                      Image.asset(AppImages.likeIcon),
                                      const SizedBox(width: 10),
                                      Text("12",
                                          style: TextStyles.mediumTextStyle(
                                              textColor: AppColors.lightGrey)),
                                    ],
                                  ),

                                  // 2
                                  Row(
                                    children: [
                                      Image.asset(AppImages.sendIcon),
                                      const SizedBox(width: 10),
                                      Text("19",
                                          style: TextStyles.mediumTextStyle(
                                              textColor: AppColors.lightGrey)),
                                    ],
                                  ),

                                  // 3
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.bookmark,
                                        color: AppColors.green,
                                      ),
                                      const SizedBox(width: 10),
                                      Text("19",
                                          style: TextStyles.mediumTextStyle(
                                              textColor: AppColors.lightGrey)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // timer
                          Container(
                            width: size.width * .3,
                            height: 30,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(AppImages.clockIcon),
                                  const SizedBox(width: 10),
                                  Text("00:59:50",
                                      style: TextStyles.boldTextStyle())
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  height: 38,
                                  child: CustomButtonWithOnlyIcon(
                                      icon: Icons.arrow_back_ios,
                                      onPressed: () {},
                                      bgColor: AppColors.white,
                                      borderColor: AppColors.white,
                                      textColor: AppColors.lightBlack,
                                      textHorizontalPadding: 10)),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  height: 38,
                                  child: CustomButtonWithoutIcon(
                                      text: 'End',
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const QuizResultScreen()));
                                      },
                                      bgColor: _currentIndex == 2
                                          ? AppColors.white
                                          : AppColors.green,
                                      borderColor: AppColors.green,
                                      textColor: _currentIndex == 2
                                          ? AppColors.black
                                          : AppColors.white,
                                      textHorizontalPadding: 10)),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  height: 38,
                                  child: CustomButtonWithOnlyIcon(
                                      icon: Icons.arrow_forward_ios,
                                      onPressed: () {
                                        setState(() {
                                          _currentIndex = _currentIndex + 1;
                                        });
                                        pageChanged(_currentIndex);
                                      },
                                      bgColor: _currentIndex == 2
                                          ? AppColors.white
                                          : AppColors.green,
                                      borderColor: _currentIndex == 2
                                          ? AppColors.white
                                          : AppColors.green,
                                      textColor: _currentIndex == 2
                                          ? AppColors.lightBlack
                                          : AppColors.white,
                                      textHorizontalPadding: 10)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}

class QuestionTitleTile extends StatelessWidget {
  const QuestionTitleTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Text("What they are doing does not seem ________ working.",
                style: TextStyles.regularTextStyle(fontSize: 16)),
          ),
        ),
        const SizedBox(height: 5),
        Column(
          children: List.generate(
              mcqList[0].optionsList.length,
              (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Text(mcqList[0].optionsList[index],
                            style: TextStyles.regularTextStyle(fontSize: 16)),
                      ),
                    ),
                  )),
        )
      ],
    );
  }
}

class McqInfoTile extends StatelessWidget {
  const McqInfoTile({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * .2,
          height: 30,
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.checkIcon),
                const SizedBox(width: 10),
                Text("07", style: TextStyles.boldTextStyle())
              ],
            ),
          ),
        ),
        Container(
          width: size.width * .2,
          height: 30,
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.resultsIcon),
                const SizedBox(width: 10),
                Text("03", style: TextStyles.boldTextStyle())
              ],
            ),
          ),
        ),
        Container(
          width: size.width * .2,
          height: 30,
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.cancelIcon),
                const SizedBox(width: 10),
                Text("03", style: TextStyles.boldTextStyle())
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class McqModel {
  String title;
  List<String> optionsList;
  McqModel({required this.title, required this.optionsList});
}

List<McqModel> mcqList = [
  McqModel(
      title: 'What they are doing does not seem ________ working.',
      optionsList: ['A. be', 'B. being', 'C. been', 'D. to be']),
  McqModel(
      title: 'What they are doing does not seem ________ working.',
      optionsList: ['A. be', 'B. being', 'C. been', 'D. to be']),
  McqModel(
      title: 'What they are doing does not seem ________ working.',
      optionsList: ['A. be', 'B. being', 'C. been', 'D. to be']),
  McqModel(
      title: 'What they are doing does not seem ________ working.',
      optionsList: ['A. be', 'B. being', 'C. been', 'D. to be']),
];
