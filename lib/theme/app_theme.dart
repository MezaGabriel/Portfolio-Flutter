import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.teal;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Primary Color
    primaryColor: Colors.teal,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Primary Color
    primaryColor: Colors.teal,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    scaffoldBackgroundColor: Colors.black12,
  );
}
