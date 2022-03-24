import 'package:flutter/material.dart';
import 'package:sevendaysdesign/widgets/home_page_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomePageBox(text: 'Day 1 : Splash Screen'),
            HomePageBox(text: 'Day 2 : Get Started Screen'),
            HomePageBox(text: 'Day 3 : Sign In Screen'),
            HomePageBox(text: 'Day 4 : Empty State'),
            HomePageBox(text: 'Day 5 : Rating Screen'),
            HomePageBox(text: 'Day 6 : Pricing Screen'),
            HomePageBox(text: 'Day 7 : Random Screen'),
          ],
        ),
      ),
    );
  }
}
