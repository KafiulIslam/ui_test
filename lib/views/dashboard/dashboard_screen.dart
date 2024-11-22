import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_test/utils/color.dart';
import 'package:ui_test/views/dashboard/profile/profile_screen.dart';
import '../../utils/assets_path.dart';
import 'home/home_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 18,
              width: 18,
              child: SvgPicture.asset(
                homeIcon,
                color: _selectedIndex == 0 ? AppColor.white : AppColor.ass,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 18,
              width: 18,
              child: SvgPicture.asset(
                profileIcon,
                color: _selectedIndex == 1 ? AppColor.white : AppColor.ass,
              ),
            ),
            label: 'Profile',
          ),
        ],
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.secondaryColor,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
