import 'package:flutter/material.dart';
import '../task1/task1.dart';
import '../task2/welcome_page.dart';
import '../task3/welcome_task3.dart';
import '../task5/welcome_task5.dart';
import '../interface/interface_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: task1(),
      // home: welcome_task2(),
      // home: welcome_task3(),
      // home: welcome_task5(),
      home: interface_page(),
    );
  }
}
