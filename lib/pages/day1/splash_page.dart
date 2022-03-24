import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sevendaysdesign/%20shared/theme.dart';
import 'package:sevendaysdesign/pages/day1/welcome_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => WelcomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: day1backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/day1-sword.png',
              width: 140,
            ),
            SizedBox(
              height: 170,
            ),
            Text(
              'V E N T U R E',
              style: day1splashText,
            )
          ],
        ),
      ),
    );
  }
}
