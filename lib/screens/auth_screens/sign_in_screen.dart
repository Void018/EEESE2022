import 'package:eeese2022/config/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 10),
      child: ListView(
        children: [
          SizedBox(height: 50),
          CircleAvatar(radius: 50),
          SizedBox(height: 50),
          TextField(
            decoration: InputDecoration(
              fillColor: Color(0xA0F3D0D0),
              filled: true,
              labelText: 'Username',
              labelStyle: TextStyle(color: Colors.black),
              focusedBorder: UnderlineInputBorder(),
            ),
            cursorColor: Colors.black,
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              fillColor: Color(0xA0F3D0D0),
              filled: true,
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.black),
              focusedBorder: UnderlineInputBorder(),
            ),
            cursorColor: Colors.black,
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 120,
            height: 60,
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.mainScreen);
                },
                child: Text('Log in'),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text.rich(
            TextSpan(
              text: 'Don\'t have an account? ',
              children: [
                TextSpan(
                  text: 'Sign up',
                  style: TextStyle(decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).pushNamed(Routes.signup);
                    },
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
