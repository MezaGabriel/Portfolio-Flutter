import 'package:flutter/material.dart';
import 'package:newsapp/src/pages/tabs_pages.dart';
import 'package:newsapp/src/theme/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      home: TabsPage(),
    );
  }
}
