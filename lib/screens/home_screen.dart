import 'package:flutter/material.dart';
import 'package:userpreferences/shared_preferences/preferences.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Darkmode: ${Preferences.isDarkmode}'),
          const Divider(),
          Text('Gender: ${Preferences.gender}'),
          const Divider(),
          Text('User Name: ${Preferences.name}'),
          const Divider(),
        ],
      ),
    );
  }
}
