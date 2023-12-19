import 'package:flutter/material.dart';

class NavigationBarItem extends BottomNavigationBarItem {
  final String initialLocation;

  NavigationBarItem({
    required this.initialLocation,
    required Widget icon,
    required Widget activeIcon,
    String? label,
  }) : super(
          icon: icon,
          activeIcon: activeIcon,
          label: label,
        );
}
