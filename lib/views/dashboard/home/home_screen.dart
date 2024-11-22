import 'package:flutter/material.dart';
import 'package:ui_test/utils/typograpgy.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Home screen',
        style: tTextStyle700,
      )),
    );
  }
}
