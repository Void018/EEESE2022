import 'package:eeese2022/repos/models/drug.dart';
import 'package:flutter/material.dart';

class DrugRepo extends ChangeNotifier {
  List<Drug>? _drugs;

  Future<List<Drug>> getDrugs() async {
    _loadData();
    return [];
  }

  void _loadData() {}

  get drugs => _drugs;
}
