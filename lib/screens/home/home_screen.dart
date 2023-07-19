import 'package:flutter/material.dart';
import 'package:help_book/screens/home/home_widgets/home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: 5,
        itemBuilder: (context, index) {
        return const HomeWidget();
        });
  }
}

















