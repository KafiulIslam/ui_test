import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_test/utils/color.dart';
import 'package:ui_test/utils/typograpgy.dart';
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
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: AppColor.borderColor, width: 1),
          ),
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 18,
                width: 18,
                child: SvgPicture.asset(
                  homeIcon,
                  color: _selectedIndex == 0
                      ? AppColor.white
                      : AppColor.borderColor,
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
                  color: _selectedIndex == 1
                      ? AppColor.white
                      : AppColor.borderColor,
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
          selectedLabelStyle: tTextStyleRegular,
          unselectedLabelStyle: tTextStyleRegular,
          unselectedItemColor: AppColor.borderColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
