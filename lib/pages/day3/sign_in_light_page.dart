import 'package:flutter/material.dart';
import 'package:sevendaysdesign/%20shared/theme.dart';

class SignInLightPage extends StatefulWidget {
  const SignInLightPage({Key? key}) : super(key: key);

  @override
  State<SignInLightPage> createState() => _SignInLightPageState();
}

class _SignInLightPageState extends State<SignInLightPage> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  width: 245,
                  height: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/day3-light-logo.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Email Address',
                style: day3openSansText.copyWith(color: day3lightBlackColor),
              ),
              SizedBox(
                height: 6,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40 * 2,
                height: 55,
                child: TextField(
                  style: day3openSansText.copyWith(
                    color: day3lightBlackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: day3openSansText.copyWith(
                        color: day3lightGrayColor, fontSize: 14),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(17)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(17)),
                    contentPadding: const EdgeInsets.all(15),
                    fillColor: day3lightInputFillColor,
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
                      color: day3lightBlackColor, fontSize: 14),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: day3openSansText.copyWith(
                        color: day3lightGrayColor, fontSize: 14),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(17)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(17)),
                    contentPadding: const EdgeInsets.all(15),
                    fillColor: day3lightInputFillColor,
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
                        color: day3lightGrayColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 2 * 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: day3lightBlueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Text(
                    'Sign In',
                    style: day3openSansText.copyWith(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 2 * 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: day3lightGrayColor),
                    elevation: 0,
                    primary: day3lightBackgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Text(
                    'Create New Account',
                    style: day3openSansText.copyWith(
                      color: day3lightGrayColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
