// ignore_for_file: prefer_const_constructors

import 'package:eeese2022/repos/chat_repo.dart';
import 'package:eeese2022/repos/database.dart';
import 'package:eeese2022/repos/doctor_repo.dart';
import 'package:eeese2022/repos/drug_repo.dart';
import 'package:eeese2022/repos/patient_repo.dart';
import 'package:eeese2022/repos/report_repo.dart';
import 'package:eeese2022/screens/auth_screens/sign_in_screen.dart';
import 'package:eeese2022/screens/auth_screens/sign_up_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ChatRepo()),
        ChangeNotifierProvider(create: (context) => DoctorRepo()),
        ChangeNotifierProvider(create: (context) => PatientRepo()),
        ChangeNotifierProvider(create: (context) => DrugRepo()),
        ChangeNotifierProvider(create: (context) => ReportRepo()),
        ChangeNotifierProvider(create: (context) => Database()),
      ],
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xFFB0E7FF),
          // body: SigninScreen(),
          body: SignUp(),
        ),
      ),
    );
  }
}
