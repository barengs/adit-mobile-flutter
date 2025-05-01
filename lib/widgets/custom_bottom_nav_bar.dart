// lib/widgets/custom_bottom_nav_bar.dart
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 58,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(66, 110, 110, 110),
              blurRadius: 2,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTap,
          selectedItemColor: Color(0xFF21ABA5),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          items: [
            _buildItem(Icons.home_filled, 0),
            _buildItem(Icons.filter_center_focus_sharp, 1),
            _buildItem(Icons.message, 2),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildItem(IconData icon, int index) {
    bool isActive = currentIndex == index;

    return BottomNavigationBarItem(
      icon: SizedBox(
        height: 58,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon == Icons.message
                ? Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(3.1416),
                  child: Icon(
                    icon,
                    color: isActive ? Color(0xFF21ABA5) : Colors.grey,
                    size: 29,
                  ),
                )
                : Icon(
                  icon,
                  color: isActive ? Color(0xFF21ABA5) : Colors.grey,
                  size: 29,
                ),
            SizedBox(height: 1),
            Container(
              height: 3.0,
              width: 25.0,
              color: isActive ? Color(0xFF21ABA5) : Colors.transparent,
            ),
          ],
        ),
      ),
      label: '',
    );
  }
}
