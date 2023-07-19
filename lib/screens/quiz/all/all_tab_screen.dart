import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/app_images.dart';
import 'package:help_book/data/quiz_subject_model.dart';
import 'package:help_book/global_widgets/buttons/custom_button_without_icon.dart';
import 'package:help_book/global_widgets/quiz_subject_menu/quiz_subject_menu.dart';
import 'package:help_book/providers/quiz_provider.dart';
import 'package:help_book/screens/quiz/all/quiz_scetion_screen.dart';
import 'package:help_book/utils/text_styles.dart';
import 'package:provider/provider.dart';

class AllTab extends StatefulWidget {
  const AllTab({Key? key}) : super(key: key);

  @override
  State<AllTab> createState() => _AllTabState();
}

class _AllTabState extends State<AllTab> {
  int selected = -1;

  String subject = '';
  String category = '';
  String subCategory = '';
  bool checkCategory = false;
  bool checkSubCategory = false;

  int selectedSubjectIndex = -1;
  int selectedCategoryIndex = -1;
  int selectedSubCategoryIndex = -1;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 12),
          Consumer<QuizProvider>(
            builder: (ctx, provider, widget) => QuizSubjectMenu(
              currentIndex: provider.selectedSubject,
              onChanged: (int index) =>
                  context.read<QuizProvider>().changeSubject(index),
            ),
          ),
          const SizedBox(height: 6),
          ListView.builder(
            key: Key('builder ${selected.toString()}'),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: subjectsList.length,
            itemBuilder: (context, subjectIndex) {
              return Column(children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    clipBehavior: Clip.antiAlias,
                    color: AppColors.white,
                    child: Theme(
                      data:
                          ThemeData().copyWith(dividerColor: AppColors.bgColor),
                      child: ExpansionTile(
                          key: Key(subjectIndex.toString()),
                          initiallyExpanded: subjectIndex == selected,
                          tilePadding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          backgroundColor: AppColors.white,
                          leading: Container(
                            padding: const EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width - 100,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              ),
                            ),
                            height: 50,
                            child: Row(
                              children: [
                                Image.asset(AppImages.tileLeftImage,
                                    height: 15),
                                const SizedBox(width: 5),
                                Text(subjectsList[subjectIndex].title,
                                    style: TextStyles.boldTextStyle(
                                        fontSize: 15,
                                        textColor:
                                            selectedSubjectIndex == subjectIndex
                                                ? AppColors.green
                                                : AppColors.lightGrey))
                              ],
                            ),
                          ),
                          trailing: Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            width: 50,
                            height: 50,
                            child: Row(
                              children: [
                                Image.asset(AppImages.tileRightImage,
                                    height: 15),
                                const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                          ),
                          onExpansionChanged: ((newState) {
                            if (newState) {
                              setState(() {
                                const Duration(microseconds: 1000);
                                selected = subjectIndex;
                                subject = '';
                                category = '';
                                subCategory = '';
                                selectedSubjectIndex = -1;
                                selectedCategoryIndex = -1;
                                selectedSubCategoryIndex = -1;
                                selectedSubjectIndex = subjectIndex;
                                if (subjectsList[subjectIndex].categoriesList !=
                                    null) {
                                  checkCategory = false;
                                  checkSubCategory = false;
                                } else {
                                  checkCategory = true;
                                  checkSubCategory = true;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const QuizSectionScreen()));
                                }
                                subject = subjectsList[subjectIndex].title;
                              });
                            } else {
                              setState(() {
                                selected = -1;
                              });
                            }
                          }),
                          title: const SizedBox.shrink(),
                          children: <Widget>[
                            Container(color: AppColors.bgColor, height: 2),
                            if (subjectsList[subjectIndex].categoriesList !=
                                null)
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: subjectsList[subjectIndex]
                                      .categoriesList!
                                      .length,
                                  itemBuilder: (context, categoriesIndex) {
                                    return Theme(
                                      data: ThemeData().copyWith(
                                          dividerColor: Colors.transparent),
                                      child: ExpansionTile(
                                        leading: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          alignment: Alignment.centerLeft,
                                          color: Colors.white,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              100,
                                          height: 50,
                                          child: Text(
                                              subjectsList[subjectIndex]
                                                  .categoriesList![
                                                      categoriesIndex]
                                                  .title,
                                              style: TextStyles.mediumTextStyle(
                                                  textColor:
                                                      selectedCategoryIndex ==
                                                              categoriesIndex
                                                          ? AppColors.green
                                                          : AppColors
                                                              .lightGrey)),
                                        ),
                                        trailing: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              const Duration(
                                                  microseconds: 1000);
                                              checkCategory = true;
                                              selectedCategoryIndex =
                                                  categoriesIndex;
                                              if (subjectsList[subjectIndex]
                                                      .categoriesList![
                                                          categoriesIndex]
                                                      .subCatsListList !=
                                                  null) {
                                                checkSubCategory = false;
                                              } else {
                                                checkSubCategory = true;
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const QuizSectionScreen()));
                                              }
                                              category =
                                                  subjectsList[subjectIndex]
                                                      .categoriesList![
                                                          categoriesIndex]
                                                      .title;
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            color: Colors.white,
                                            width: 60,
                                            height: 50,
                                            child: const Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                        onExpansionChanged: ((newState) {
                                          if (newState) {
                                            setState(() {
                                              const Duration(
                                                  microseconds: 1000);
                                              checkCategory = true;
                                              selectedCategoryIndex =
                                                  categoriesIndex;
                                              if (subjectsList[subjectIndex]
                                                      .categoriesList![
                                                          categoriesIndex]
                                                      .subCatsListList !=
                                                  null) {
                                                checkSubCategory = false;
                                              } else {
                                                checkSubCategory = true;
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const QuizSectionScreen()));
                                              }
                                              category =
                                                  subjectsList[subjectIndex]
                                                      .categoriesList![
                                                          categoriesIndex]
                                                      .title;
                                            });
                                          } else {}
                                        }),
                                        title: const SizedBox.shrink(),
                                        children: [
                                          if (subjectsList[subjectIndex]
                                                  .categoriesList![
                                                      categoriesIndex]
                                                  .subCatsListList !=
                                              null)
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0, right: 20),
                                              child: ListView.builder(
                                                  shrinkWrap: true,
                                                  itemCount:
                                                      subjectsList[subjectIndex]
                                                          .categoriesList![
                                                              categoriesIndex]
                                                          .subCatsListList!
                                                          .length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Theme(
                                                      data: ThemeData().copyWith(
                                                          dividerColor: Colors
                                                              .transparent),
                                                      child: ExpansionTile(
                                                          trailing:
                                                              GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                const Duration(
                                                                    microseconds:
                                                                        1000);
                                                                checkSubCategory =
                                                                    true;
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                const QuizSectionScreen()));
                                                                selectedSubCategoryIndex =
                                                                    index;
                                                                subCategory = subjectsList[subjectIndex]
                                                                    .categoriesList![
                                                                        categoriesIndex]
                                                                    .subCatsListList![
                                                                        index]
                                                                    .title;
                                                              });
                                                            },
                                                            child:
                                                                const Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          15.0),
                                                              child: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down,
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                            ),
                                                          ),
                                                          onExpansionChanged:
                                                              ((newState) {
                                                            if (newState) {
                                                              setState(() {
                                                                const Duration(
                                                                    microseconds:
                                                                        1000);
                                                                checkSubCategory =
                                                                    true;
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                const QuizSectionScreen()));
                                                                selectedSubCategoryIndex =
                                                                    index;
                                                                subCategory = subjectsList[subjectIndex]
                                                                    .categoriesList![
                                                                        categoriesIndex]
                                                                    .subCatsListList![
                                                                        index]
                                                                    .title;
                                                              });
                                                            } else {}
                                                          }),
                                                          title: Text(
                                                              subjectsList[
                                                                      subjectIndex]
                                                                  .categoriesList![
                                                                      categoriesIndex]
                                                                  .subCatsListList![
                                                                      index]
                                                                  .title,
                                                              style: TextStyles.regularTextStyle(
                                                                  textColor: selectedSubCategoryIndex == index
                                                                      ? AppColors
                                                                          .green
                                                                      : AppColors
                                                                          .lightGrey))),
                                                    );
                                                  }),
                                            ),
                                        ],
                                      ),
                                    );
                                  }),
                          ]),
                    ),
                  ),
                ),
                // Container(height: 10, color: AppColors.bgColor),
              ]);
            },
          ),
          const SizedBox(height: 50),
          // if(subject.isNotEmpty && checkSubCategory == true && checkCategory == true)SizedBox(
          //      width: size.width,
          //      height: 50,
          //      child: Padding(
          //        padding: const EdgeInsets.symmetric(horizontal: 15.0),
          //        child: CustomButtonWithoutIcon(text: 'Next', onPressed: () {
          //             // Navigator.push(context, MaterialPageRoute(builder: (context) => const QuizSectionScreen()));
          //        }, textColor: AppColors.white),
          //      )),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
