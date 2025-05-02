// lib/dashboard.dart
import 'package:flutter/material.dart';
import 'package:siakad/widgets/custom_bottom_nav_bar.dart';
import 'package:siakad/widgets/custom_header.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Dashboard')),
    Center(child: Text('QR Page')),
    Center(child: Text('Information Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomHeader(),
          Expanded(child: _pages[_currentIndex]),
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
