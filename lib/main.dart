import 'package:flutter/material.dart';

import 'package:portfolio/router/app_routes.dart';
import 'package:portfolio/screens/alert_screen.dart';
import 'package:portfolio/screens/screens.dart';

import 'theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const ListView2Screen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.darkTheme,
    );
  }
}
