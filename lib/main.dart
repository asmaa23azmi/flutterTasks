import 'package:flutter/material.dart';
import '../task1/task1.dart';
import '../task2/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: task1(),
      home: welcome_page(),
    );
  }
}
