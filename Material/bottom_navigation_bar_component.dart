import 'package:flutter/material.dart';

class BottomNavigationBarComponent extends StatelessWidget {
  List<BottomNavigationBarItem> items;
  int currentIndex;
  void Function(int) onTap;
  Color? selectedItemColor;
  BottomNavigationBarComponent({Key? key, required this.items, required this.currentIndex, required this.onTap, this.selectedItemColor }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: items,
                              currentIndex: currentIndex,
                              onTap: onTap,
                              selectedItemColor: selectedItemColor,
                              type: BottomNavigationBarType.fixed,);
  }
}
