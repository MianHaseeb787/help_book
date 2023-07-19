import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/global_widgets/buttons/custom_icon_button.dart';
import 'package:help_book/global_widgets/select_level_menu.dart';
import 'package:help_book/providers/quiz_provider.dart';
import 'package:help_book/screens/quiz/all/preparation_screen.dart';
import 'package:help_book/utils/custom_dialogs/select_mcqs_number.dart';
import 'package:help_book/utils/text_styles.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class SelectLevelScreen extends StatefulWidget {
  const SelectLevelScreen({Key? key}) : super(key: key);

  @override
  State<SelectLevelScreen> createState() => _SelectLevelScreenState();
}

class _SelectLevelScreenState extends State<SelectLevelScreen> {

  Widget getCurrentScreen(int index) {
    Widget widget = Container();
    switch (index) {
      case 0:
        widget =  const TestScreen();
        break;
      case 1:
        widget =  const PreparationScreen();
        break;
    }
    return widget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
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
              child: Column(
                children: [
                  const SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                  Consumer<QuizProvider>(
                    builder: (ctx, provider, widget) => SelectLevelMenu(
                      currentIndex: provider.selectedLevelTabIndex,
                      onChanged: (int index) => context.read<QuizProvider>().changeTab(index),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: getCurrentScreen(context.watch<QuizProvider>().selectedLevelTabIndex))
          ],
        ),
      ),
    );
  }
}


class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {

  String currentTitle = '';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        color: AppColors.bgColor,
        width: size.width,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                width: size.width,
                height: 200,
                child: Lottie.asset('assets/112588-treasurer-coin.json', repeat: false),
              ),
            ),
            const SizedBox(height: 10),
            MyCoins(size: size),
            const SizedBox(height: 10),
            Column(
              children: List.generate(listItems.length, (index) =>
                  LevelTile(title: listItems[index], callback: () {
                    setState(() {
                      currentTitle = listItems[index];
                    });
                    showMcqNumber(context);
                  }, currentTitle: currentTitle)),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class LevelTile extends StatelessWidget {
  final String title;
  final String currentTitle;
  final VoidCallback callback;
  const LevelTile({
    super.key, required this.title, required this.callback, required this.currentTitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(5)
          ),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
          child: Row(
            children: [
              Image.asset(AppImages.lockIcon, color: currentTitle == title ? AppColors.black : AppColors.lightGrey),
              const SizedBox(width: 10),
              Expanded(child: Text(title, style: TextStyles.boldTextStyle(textColor: currentTitle == title ? AppColors.black : AppColors.lightGrey))),
              Icon(Icons.arrow_forward_ios, color: currentTitle == title ? AppColors.black : AppColors.lightGrey, size: 17)
            ],
          ),
        ),
      ),
    );
  }
}

List<String> listItems = [
  'Level 1',
  'Level 2',
  'Level 3'
];

class MyCoins extends StatelessWidget {
  const MyCoins({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.white,
        ),
        width: size.width,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(AppImages.coinsIcon),
                      const SizedBox(width: 10),
                      Row(
                        children: const [
                          Text("My coins: ", style: TextStyle(color: AppColors.black, fontWeight: FontWeight.w600)),
                          Text("97", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400))
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(AppImages.coinsIcon),
                      const SizedBox(width: 10),
                      Row(
                        children: const [
                          Text("My Levels: ", style: TextStyle(color: AppColors.black, fontWeight: FontWeight.w600)),
                          Text("04", style: TextStyle(color: AppColors.green))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text("How you gain?", style: TextStyle(color: AppColors.black, fontWeight: FontWeight.w600)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text("Donec arcu turpis, rhoncus vitae commodo , lacinia nec diam. Lorem ipsum dolor sit Donec arcu turpis, rhoncus vitae commodo , lacinia nec diam. Lorem ipsum dolor sit Donec arcu turpis, rhoncus vitae commodo , lacinia nec diam. Lorem ipsum dolor sit see more", style: TextStyle(color: AppColors.lightGrey)),
            )
          ],
        ),
      ),
    );
  }
}
















