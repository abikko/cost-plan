import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const HomeBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'ToDo',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Calendar',
        ),
      ],
    );
  }
}
