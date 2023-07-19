import 'package:flutter/material.dart';
import 'package:help_book/data/app_colors.dart';
import 'package:help_book/data/select_level_items_model.dart';
import 'package:help_book/global_widgets/select_level_item.dart';

class SelectLevelMenu extends StatefulWidget {
  const SelectLevelMenu({
    Key? key,
    required this.currentIndex,
    required this.onChanged,
  }) : super(key: key);
  final int currentIndex;
  final Function(int index) onChanged;

  @override
  State<SelectLevelMenu> createState() => _SelectLevelMenuState();
}

class _SelectLevelMenuState extends State<SelectLevelMenu> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      shape: const CircularNotchedRectangle(),
      color: AppColors.bgColor,
      child: Container(
        padding:  const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius:  BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            selectLevelItems.length,
                (index) => InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              radius: 20,
              onTap: () {
                widget.onChanged(index);
                currentIndex = index;
              },
              child: SelectLevelItem(
                title: selectLevelItems[index].title,
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











