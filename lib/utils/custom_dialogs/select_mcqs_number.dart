import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/screens/quiz/all/mcq_sheet_screen.dart';
import 'package:help_book/utils/text_styles.dart';

Future<void> showMcqNumber(BuildContext context) async {
  showDialog(
    context: context,
    builder: (context) {
      String currentNumbers = '';
      return StatefulBuilder(
        builder: (context, setState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(mcqNumberList.length, (index) => Material(
                      color: AppColors.white,
                      child: InkWell(
                        onTap: () {
                         setState(() {
                           currentNumbers = mcqNumberList[index];
                         });
                         Future.delayed(const Duration(microseconds: 500));
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const MCQSheetScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(mcqNumberList[index], style: TextStyles.mediumTextStyle(textColor: currentNumbers == mcqNumberList[index] ? AppColors.green : AppColors.lightGrey)),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor: currentNumbers == mcqNumberList[index] ? AppColors.green : AppColors.lightGrey,
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: AppColors.white,
                                      child: CircleAvatar(
                                        radius: 6,
                                        backgroundColor: currentNumbers == mcqNumberList[index] ? AppColors.green : AppColors.lightGrey,
                                      )
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
                  ),
                ),
              ),
            ],
          );
        },
      );
    },
  );
}

List<String> mcqNumberList = [
  '20 MCQS',
  '30 MCQS',
  '40 MCQS',
  '50 MCQS',
  '60 MCQS',
  '70 MCQS',
  '80 MCQS',
  '90 MCQS',
  '100 MCQS',
];

