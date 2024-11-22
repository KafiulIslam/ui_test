import 'package:flutter/material.dart';
import 'package:ui_test/utils/color.dart';
import 'package:ui_test/views/dashboard/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ui_test',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.black,
        useMaterial3: true,
      ),
      home: const DashboardScreen(),
    );
  }
}
