import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/global_widgets/buttons/custom_icon_button.dart';
import 'package:help_book/utils/text_styles.dart';

class QuizResultScreen extends StatelessWidget {
  const QuizResultScreen({Key? key}) : super(key: key);

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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        image: AppImages.backIcon,
                        color: AppColors.black,
                        width: 32,
                        height: 32,
                        imageColor: AppColors.green,
                      ),
                      Text("Done",
                          style: TextStyles.boldTextStyle(
                              textColor: AppColors.black)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    color: AppColors.bgColor,
                    child: Column(
                      children: [
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              width: size.width,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 25),
                                  Image.asset(AppImages.circleIcon),
                                  const SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Level 2 ", style: TextStyles.boldTextStyle(textColor: AppColors.black)),
                                      Text("Completed", style: TextStyles.boldTextStyle(textColor: AppColors.green)),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: size.width * .3,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        boxShadow:  [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(.3),
                                            spreadRadius: 1,
                                            blurRadius: 7,
                                            offset: const Offset(0, 1),
                                          ),
                                        ],
                                        color: AppColors.white, borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(AppImages.clockIcon),
                                          const SizedBox(width: 10),
                                          Text("00:00:00", style: TextStyles.boldTextStyle())
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  ScoreInfoTiles(size: size),
                                  const SizedBox(height: 10),
                                  PreviousCurrentCoins(size: size),
                                  const SizedBox(height: 10),
                                  CoinBoxes(size: size),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ),
                        ),

                        /// Topper Students ...
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              width: size.width,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 25),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Text("Topper Students", style: TextStyles.boldTextStyle()),
                                  ),
                                  const SizedBox(height: 8),
                                  ListView.builder(
                                    shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        return const TopperStudentCard();
                                      }),
                                  const SizedBox(height: 10),
                                ]
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(height: 12, color: AppColors.bgColor),
            ],
          ),
        ),
      ),
    );
  }
}

class TopperStudentCard extends StatelessWidget {
  const TopperStudentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(width: 1, color: AppColors.lightGrey.withOpacity(.2)),
          borderRadius: BorderRadius.circular(10),
          boxShadow:  [
            BoxShadow(
              color: Colors.grey.withOpacity(.3),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(AppImages.profile),
            const SizedBox(width: 5),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Saad Ahmad", style: TextStyles.boldTextStyle()),
                  const SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(AppImages.lockIcon, height: 20),
                      Text("Level 5", style: TextStyles.regularTextStyle()),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(AppImages.coinsIcon, height: 20),
                      Text("4500", style: TextStyles.regularTextStyle()),
                      const SizedBox(width: 5),
                      const Padding(
                        padding: EdgeInsets.only(top: 2.0),
                        child: Text("3000", style: TextStyle(decoration: TextDecoration.lineThrough, color: AppColors.black)),
                      ),
                      // Text("used 3000", style: TextStyles.regularTextStyle()),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColors.white,
                        border: Border.all(width: 1, color: AppColors.green)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
                      child: Text("Connect", style: TextStyles.regularTextStyle()),
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
            // Container(height: 120, color: AppColors.green, width: 60,)
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10)
                        )
                    ),
                    alignment: Alignment.center,
                    width: 70,
                    child: const Text("Winner", style: TextStyle())),
                Container(height: 2, width: 70, color: AppColors.white),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: 70,
                    decoration: const BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10)
                        )
                    ),
                    child: const Text("Bike\nCash\nLaptop\n"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class CoinBoxes extends StatelessWidget {
  const CoinBoxes({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60,
            width: size.width * .35,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.coinsRectangleBox),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Total Coins", style: TextStyles.boldTextStyle()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.coinsGroup, height: 25),
                    const SizedBox(width: 10),
                    Text("70", style: TextStyles.boldTextStyle(textColor: AppColors.green))
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 60,
            width: size.width * .35,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.coinsRectangleBox),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Bounce Coins", style: TextStyles.boldTextStyle()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.coinsGroup, height: 25),
                    const SizedBox(width: 10),
                    Text("20", style: TextStyles.boldTextStyle(textColor: AppColors.green))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class ScoreInfoTiles extends StatelessWidget {
  const ScoreInfoTiles({
  super.key,
  required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * .2,
            height: 30,
            decoration: BoxDecoration(
                boxShadow:  [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 1),
                  ),
                ],
                color: AppColors.white, borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.checkIcon),
                  const SizedBox(width: 10),
                  Text("20", style: TextStyles.boldTextStyle())
                ],
              ),
            ),
          ),
          Container(
            width: size.width * .2,
            height: 30,
            decoration: BoxDecoration(
                boxShadow:  [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 1),
                  ),
                ],
                color: AppColors.white, borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.forwardIcon),
                  const SizedBox(width: 10),
                  Text("20", style: TextStyles.boldTextStyle())
                ],
              ),
            ),
          ),
          Container(
            width: size.width * .2,
            height: 30,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 1),
                  ),
                ],
                color: AppColors.white, borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.cancelIcon),
                  const SizedBox(width: 10),
                  Text("20", style: TextStyles.boldTextStyle())
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class PreviousCurrentCoins extends StatelessWidget {
  const PreviousCurrentCoins({
  super.key,
  required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * .4,
            height: 30,
            decoration: BoxDecoration(
                boxShadow:  [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 1),
                  ),
                ],
                color: AppColors.white, borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.coinsIcon),
                  const SizedBox(width: 10),
                  Text("Previous: 30", style: TextStyles.boldTextStyle())
                ],
              ),
            ),
          ),
          Container(
            width: size.width * .4,
            height: 30,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 1),
                  ),
                ],
                color: AppColors.white, borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.coinsIcon),
                  const SizedBox(width: 10),
                  Text("Current: 40", style: TextStyles.boldTextStyle())
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


