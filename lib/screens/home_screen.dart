import 'package:flutter/material.dart';
import 'package:portfolio/screens/listview1_screen.dart';

import '../router/app_routes.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(
                  menuOptions[index].icon,
                  color: AppTheme.primary,
                ),
                title: Text(
                  menuOptions[index].name,
                ),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //   builder: (context) => ListView1Screen(),
                  // );
                  // Navigator.push(context, route);
                  Navigator.pushNamed(context, menuOptions[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}
