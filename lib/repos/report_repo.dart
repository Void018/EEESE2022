import 'package:eeese2022/repos/models/report.dart';
import 'package:flutter/material.dart';

class ReportRepo extends ChangeNotifier {
  List<Report>? _reports;

  Future<List<Report>> getReports() async {
    _loadData();
    return [];
  }

  void addNewReport(Report report) {}

  void _loadData() {}

  void _saveData() {}

  get reports => _reports;
}
