import 'package:flutter/material.dart';
import 'package:sevendaysdesign/pages/day2/get_started_page.dart';
import 'package:sevendaysdesign/pages/day2/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: WelcomePage(),
    );
  }
}
