import 'package:flutter/material.dart';

import 'db_provider.dart';

class ScanListProvider extends ChangeNotifier {
  List<ScanModel> scans = [];

  String typeSelected = 'http';

  newScan(String value) async {
    final newScan = new ScanModel(value: value);
    final id = await DBProvider.db.newScan(newScan);

    // Assign Id to our DB model
    newScan.id = id;

    if (this.typeSelected == newScan.type) {
      this.scans.add(newScan);
      notifyListeners();
    }
  }

  loadScans() async {
    final scans = await DBProvider.db.getAllScans();
    this.scans = [...?scans];
    notifyListeners();
  }

  loadTypeScans(String type) async {
    final scans = await DBProvider.db.getTypeScans(type);
    this.scans = [...scans];
    this.typeSelected = type;
    notifyListeners();
  }

  deleteAll() async {
    await DBProvider.db.deleteAllScans();
    this.scans = [];
    notifyListeners();
  }

  deleteIdScan(int id) async {
    await DBProvider.db.deleteScan(id);
  }
}
