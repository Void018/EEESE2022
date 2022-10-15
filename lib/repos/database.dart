import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eeese2022/firebase_options.dart';
import 'package:eeese2022/repos/models/profile.dart';
import 'package:eeese2022/repos/models/report.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Database extends ChangeNotifier {
  late FirebaseFirestore db;
  bool dbInitialized = false;

  Database() {
    _initialize();
  }

  void _initialize() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    db = FirebaseFirestore.instance;
    dbInitialized = true;

    Patient(
      name: 'munther hafiz',
      nationality: 'sudanese',
      age: 22,
      isMale: true,
      isSingle: false,
    );

    var doctor = Doctor(
      name: 'kygo',
      nationality: 'sudanese',
      age: 22,
      isMale: true,
      isSingle: false,
    );

    final data = Report(
      dateTime: DateTime.now(),
      text: 'this is a report',
      doctor: doctor,
    );

    // db.collection('doctors').add(data.toJson());
    db.collection('reports').get().then(
          (event) => event.docs.forEach(
            (element) {
              print('hi this is ${element.id}: ${element.data()}');
              print(Doctor.fromJson(element.data()));
            },
          ),
        );
  }
}
