import 'package:flutter/material.dart';
import 'package:help_book/screens/institute/institute_detail_screen/institute_post/institute_post_widget/institute_post_widget.dart';

class InstitutePostScreen extends StatelessWidget {
  const InstitutePostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return const InstitutePostWidget();
          }),
    );
  }
}

