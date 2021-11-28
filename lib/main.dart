import 'package:flutter/material.dart';
import 'package:perfect_timetracker/theme.dart';
import 'pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfect Time Tracker',
      theme: myTheme(),
      home: const StartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

