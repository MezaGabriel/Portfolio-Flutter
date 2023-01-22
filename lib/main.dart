import 'package:flutter/material.dart';
import 'package:mapbox/src/views/fullscreenmap.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MapboxGL App',
      home: Scaffold(
        body: FullScreenMap(),
      ),
    );
  }
}
