import 'package:flutter/material.dart';
import 'package:help_book/screens/institute/institute_widgets/institute_widget.dart';
import 'institute_detail_screen/institute_detail_screen.dart';

class InstituteScreen extends StatelessWidget {
  const InstituteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const InstituteDetailScreen()));
              },
              child: const InstituteWidget());
        });
  }
}












