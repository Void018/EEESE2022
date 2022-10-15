import 'package:eeese2022/repos/models/profile.dart';
import 'package:flutter/material.dart';

class DoctorRepo extends ChangeNotifier {
  List<Doctor>? _doctors;

  Future<List<Doctor>> getDoctors() async {
    _loadData();
    return [];
  }

  void _loadData() {}

  get doctors => _doctors;
}
