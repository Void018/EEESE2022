// ignore_for_file: prefer_const_constructors

import 'package:eeese2022/config/routes.dart';
import 'package:eeese2022/screens/auth_screens/sign_up_details.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB0E7FF),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Spacer(flex: 1),
            Text('Welcome'),
            Text('your way to a healthy life'),
            Spacer(),
            SizedBox(
              width: 168,
              height: 168,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  primary: Color(0xffE2CEBE),
                ),
                child: Text('Doctor'),
              ),
            ),
            Spacer(flex: 2),
            SizedBox(
              width: 168,
              height: 168,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.signupDetails);
                },
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  primary: Color(0xffE2CEBE),
                ),
                child: Text('Patient'),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
