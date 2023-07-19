import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/utils/text_styles.dart';

class ReadMoreWidget extends StatefulWidget {
  final String description;
  final Color? color;
  const ReadMoreWidget({Key? key, required this.description, this.color})
      : super(key: key);

  @override
  State<ReadMoreWidget> createState() => _ReadMoreWidgetState();
}

class _ReadMoreWidgetState extends State<ReadMoreWidget> {
  String firstHalf = '';
  String secondHalf = '';
  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.description.length > 140) {
      firstHalf = widget.description.substring(0, 140);
      secondHalf = widget.description.substring(140, widget.description.length);
    } else {
      firstHalf = widget.description;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: secondHalf.isEmpty
          ? Text(firstHalf, style: TextStyles.regularTextStyle(textColor: AppColors.lightGrey, fontSize: 13))
          : Column(
        children: <Widget>[
          RichText(
            overflow: TextOverflow.clip,
            textAlign: TextAlign.end,
            textDirection: TextDirection.rtl,
            softWrap: true,
            textScaleFactor: 1,
            text: flag
                ? TextSpan(
              text: firstHalf,
              style: TextStyles.regularTextStyle(textColor: AppColors.lightGrey, fontSize: 13),
              children: <TextSpan>[
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        setState(() {
                          flag = false;
                        });
                      },
                    text: " ...show more",
                    style: TextStyles.boldTextStyle(textColor: AppColors.black, fontSize: 14)),
              ],
            )
                : TextSpan(
              text: firstHalf + secondHalf,
              style: TextStyles.regularTextStyle(textColor: AppColors.lightGrey, fontSize: 13),
              children: <TextSpan>[
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        setState(() {
                          flag = true;
                        });
                      },
                    text: ' show less',
                    style: TextStyles.boldTextStyle(textColor: AppColors.black, fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
