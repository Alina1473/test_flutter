import 'package:flutter/material.dart';
import 'package:test_flutter/screen/home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple[700],
        accentColor: Colors.purple[700],
        brightness: Brightness.light,
      ),
      home: HomeScreen(),
    );
  }
}
