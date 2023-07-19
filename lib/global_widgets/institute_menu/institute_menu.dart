import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/institute_items_model.dart';
import 'package:help_book/global_widgets/institute_menu/institute_menu_item.dart';

class InstituteMenu extends StatefulWidget {
  const InstituteMenu({
    Key? key,
    required this.currentIndex,
    required this.onChanged,
  }) : super(key: key);
  final int currentIndex;
  final Function(int index) onChanged;

  @override
  State<InstituteMenu> createState() => _InstituteMenuState();
}

class _InstituteMenuState extends State<InstituteMenu> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      shape: const CircularNotchedRectangle(),
      color: AppColors.white,
      child: Container(
        padding:  const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            instituteItems.length,
                (index) => InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              radius: 20,
              onTap: () {
                widget.onChanged(index);
              },
              child: InstituteMenuItem(
                title: instituteItems[index].title,
                enabled: widget.currentIndex == index,
                index: index,
              ),
            ),
          ),
        ),
      ),
    );
  }
}











