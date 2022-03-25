import 'package:flutter/material.dart';

import 'package:sevendaysdesign/pages/day1/splash_page.dart';

class HomePageBox extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const HomePageBox({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: 250,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(text),
      ),
    );
  }
}
