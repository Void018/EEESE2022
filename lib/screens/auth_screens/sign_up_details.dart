// ignore_for_file: prefer_const_constructors

import 'package:eeese2022/config/routes.dart';
import 'package:eeese2022/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupDetails extends StatelessWidget {
  const SignupDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB0E7FF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 100),
            _createInputField(labelText: 'first name'),
            _createInputField(labelText: 'last name'),
            _createInputField(labelText: 'email'),
            _createInputField(labelText: 'password'),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.mainScreen);
                },
                style: ElevatedButton.styleFrom(
                  // shape: CircleBorder(),
                  primary: Color(0xffE2CEBE),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createInputField({required String labelText}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Color(0xA0F3D0D0),
          filled: true,
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.black),
          focusedBorder: UnderlineInputBorder(),
        ),
        cursorColor: Colors.black,
      ),
    );
  }
}
