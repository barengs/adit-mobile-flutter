// lib/dashboard.dart
import 'package:flutter/material.dart';
import 'package:siakad/info/info.dart';
import 'package:siakad/widgets/custom_bottom_nav_bar.dart';
import 'package:siakad/widgets/custom_header.dart';
import 'package:siakad/widgets/content_container.dart';
import 'dashboard_content.dart';
import 'package:siakad/presensi/presensi.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  // untuk mengubah tab
  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _getCurrentPage() {
    switch (_currentIndex) {
      case 0:
        return DashboardContent(onTabChange: _changeTab);
      case 1:
        return const Presensi();
      case 2:
        return const Info();
      default:
        return DashboardContent(onTabChange: _changeTab);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.primary,
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
          ContentContainer(child: _getCurrentPage()),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _changeTab,
      ),
    );
  }
}
