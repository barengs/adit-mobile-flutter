// lib/dashboard.dart
import 'package:flutter/material.dart';
import 'package:siakad/widgets/custom_bottom_nav_bar.dart';
import 'package:siakad/widgets/custom_header.dart';
import 'package:siakad/widgets/content_container.dart';
import 'package:siakad/info/info.dart';
import 'dashboard_content.dart';
import 'package:siakad/constant/app_colors.dart';
import 'package:siakad/presensi/presensi.dart';

final List<Widget> _pages = [
    const DashboardContent(),
    const Presensi(),
    const Info(),
  ];


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          CustomHeader(
            title:
                _currentIndex == 0
                    ? null
                    : (_currentIndex == 1 ? 'Presensi' : 'Info'),
            username: _currentIndex == 0 ? 'Addis' : null,
            npm: _currentIndex == 0 ? '5161011016' : null,
            profileImageUrl:
                _currentIndex == 0
                    ? 'https://avatars.githubusercontent.com/u/583231?v=4'
                    : null,
            showNotificationIcon: _currentIndex == 0,
            showSettingsIcon: _currentIndex == 0,
          ),
          ContentContainer(child: _pages[_currentIndex]),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
