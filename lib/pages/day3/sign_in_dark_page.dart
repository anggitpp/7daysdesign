import 'package:flutter/material.dart';
import 'package:sevendaysdesign/%20shared/theme.dart';

class SignInDarkPage extends StatefulWidget {
  const SignInDarkPage({Key? key}) : super(key: key);

  @override
  State<SignInDarkPage> createState() => _SignInDarkPageState();
}

class _SignInDarkPageState extends State<SignInDarkPage> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: day3darkBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 40, top: 30, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/day3-dark-logo.png',
              width: 50,
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              'Welcome back.\nLet\'s make money',
              style: day3poppinsText.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 40 * 2,
              height: 55,
              child: TextField(
                style: day3openSansText.copyWith(
                    color: Colors.white, fontSize: 14),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: day3openSansText.copyWith(
                      color: day3darkHintColor, fontSize: 14),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(17)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(17)),
                  contentPadding: EdgeInsets.all(15),
                  fillColor: day3darkInputFillColor,
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 40 * 2,
              height: 55,
              child: TextField(
                obscureText: isPasswordVisible ? false : true,
                style: day3openSansText.copyWith(
                    color: Colors.white, fontSize: 14),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: day3openSansText.copyWith(
                      color: day3darkHintColor, fontSize: 14),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(17)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(17)),
                  contentPadding: EdgeInsets.all(15),
                  fillColor: day3darkInputFillColor,
                  filled: true,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    child: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      size: 18,
                      color: day3darkHintColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot My Password',
                style: day3poppinsText.copyWith(color: day3darkGrayColor),
              ),
            ),
            Spacer(),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width - 2 * 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: day3darkOrangeColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: day3openSansText.copyWith(
                    color: day3darkBrownColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have account? ',
                  style: day3poppinsText.copyWith(color: Colors.white),
                ),
                Text(
                  'Sign Up',
                  style: day3poppinsText.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      )),
    );
  }
}
