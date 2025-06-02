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
    return Container(
      width: double.infinity, // Memastikan lebar penuh
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(66, 110, 110, 110),
            blurRadius: 2,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: SafeArea(
        child: SizedBox(
          height: 58,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNavItem(Icons.home_filled, 0),
              _buildNavItem(Icons.filter_center_focus_sharp, 1),
              _buildNavItem(Icons.message, 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    bool isActive = currentIndex == index;
    return Expanded(
      child: InkWell(
        onTap: () => onTap(index),
        child: SizedBox(
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
      ),
    );
  }


}