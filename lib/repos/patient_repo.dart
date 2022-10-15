import 'package:eeese2022/repos/models/profile.dart';
import 'package:flutter/material.dart';

class PatientRepo extends ChangeNotifier {
  List<Patient>? _patients;

  Future<List<Patient>> getpatients() async {
    _loadData();
    return [];
  }

  void addNewPatient(Patient patient) {}

  void _loadData() {}

  void _saveData() {}

  get patients => _patients;
}
