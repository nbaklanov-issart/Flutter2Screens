import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './UI/Interests_screen.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp
  ]);
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 2 Screens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InterestsScreen(),
    );
  }
}