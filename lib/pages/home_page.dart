import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscanner/pages/direction_page.dart';
import 'package:qrscanner/pages/maps_page.dart';
import 'package:qrscanner/providers/db_provider.dart';
import 'package:qrscanner/providers/ui_provider.dart';
import 'package:qrscanner/widgets/custom_navigator.dart';
import 'package:qrscanner/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('History'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever)),
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    // final tempScan = new ScanModel(value: 'https://google,com');
    DBProvider.db.deleteAllScans().then(print);

    switch (currentIndex) {
      case 0:
        return MapsPage();

      case 1:
        return DirectionPage();

      default:
        return MapsPage();
    }
  }
}
