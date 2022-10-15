// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Spacer(),
          CircleAvatar(radius: 50),
          Spacer(),
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
          SizedBox(height: 30),
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
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Log in'),
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
                      print('hi');
                    },
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
