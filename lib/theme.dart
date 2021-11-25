import 'package:flutter/material.dart';

ThemeData myTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.greenAccent,
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
      button: TextStyle(color: Colors.black),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(
        secondary: Colors.greenAccent),
  );
}