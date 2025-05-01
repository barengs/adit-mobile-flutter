import 'package:flutter/material.dart';

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
      appBar: AppBar(title: Text('Dashboard')),
      body: _pages[_currentIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 58, // Maintained at 58 as required
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
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
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
              _buildBottomNavigationBarItem(Icons.home_filled, 0),
              _buildBottomNavigationBarItem(Icons.filter_center_focus_sharp, 1),
              _buildBottomNavigationBarItem(Icons.message, 2),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
    IconData icon,
    int index,
  ) {
    bool isActive = _currentIndex == index;
    return BottomNavigationBarItem(
      icon: Container(
        height: 58,
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            SizedBox(height: 1), // Reduced spacing
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
