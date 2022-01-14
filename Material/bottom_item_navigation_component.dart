import 'package:flutter/material.dart';

class BottomItemNavigationComponent{
  IconData icon;
  String label;
  IconData? activeIcon;
  BottomItemNavigationComponent(this.icon, this.label, { this.activeIcon });

  BottomNavigationBarItem build() {
    return BottomNavigationBarItem(icon: Icon(icon), activeIcon: Icon(activeIcon ?? icon), label: label);
  }
}
