import 'package:flutter/material.dart';
import 'package:pland_app/screens/home_screen.dart';
import 'screens/login_screen.dart';
void main() {
  runApp(PlandApp());
}

class PlandApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

