import 'package:flutter/material.dart';
import 'package:help_book/data/dashboard_items_model.dart';
import 'package:help_book/global_widgets/dashboard_menu/dashboard_menu_item.dart';

class DashboardMenu extends StatefulWidget {
  const DashboardMenu({
    Key? key,
    required this.currentIndex,
    required this.onChanged,
  }) : super(key: key);
  final int currentIndex;
  final Function(int index) onChanged;

  @override
  State<DashboardMenu> createState() => _DashboardMenuState();
}

class _DashboardMenuState extends State<DashboardMenu> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      shape: const CircularNotchedRectangle(),
      color: _currentIndex == 4 ? Colors.white : const Color(0xFFF5F3F3),
      child: Container(
        padding:  const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          )
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            dashboardItems.length,
                (index) => InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              radius: 20,
              onTap: () {
                _currentIndex = index;
                widget.onChanged(index);
                setState(() {});
              },
              child: DashboardMenuItem(
                title: dashboardItems[index].title,
                image: dashboardItems[index].image,
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










