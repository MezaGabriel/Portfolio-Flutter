import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscanner/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currrentIndex = uiProvider.selectedMenuOpt;
    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
      currentIndex: currrentIndex,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Direction',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Direction',
        )
      ],
    );
  }
}