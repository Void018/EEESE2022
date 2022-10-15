// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              onPressed: () {},
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
    );
  }
}
