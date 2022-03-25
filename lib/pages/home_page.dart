import 'package:flutter/material.dart';
import 'package:sevendaysdesign/pages/day1/splash_page.dart' as day1;
import 'package:sevendaysdesign/pages/day2/welcome_page.dart' as day2;
import 'package:sevendaysdesign/pages/day3/sign_in_dark_page.dart';
import 'package:sevendaysdesign/pages/day3/sign_in_light_page.dart';
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
            HomePageBox(
              text: 'Day 1 : Splash Screen',
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => day1.SplashPage(),
                ),
              ),
            ),
            HomePageBox(
              text: 'Day 2 : Get Started Screen',
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => day2.WelcomePage(),
                ),
              ),
            ),
            HomePageBox(
              text: 'Day 3 : Sign In Screen (Dark)',
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SignInDarkPage(),
                ),
              ),
            ),
            HomePageBox(
              text: 'Day 3 : Sign In Screen (Light)',
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SignInLightPage(),
                ),
              ),
            ),
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
