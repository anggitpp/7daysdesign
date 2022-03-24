import 'package:flutter/material.dart';
import 'package:sevendaysdesign/%20shared/theme.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100),
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/day1-background-image.png'),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/day1-home.png',
              width: 51,
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              'HouseQu',
              style: day1welcomeText,
            )
          ],
        ),
      ),
    );
  }
}
