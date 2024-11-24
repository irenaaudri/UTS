import 'package:flutter/material.dart';
import 'package:Seventix/pages/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFB9E5E8),
      ),
      home: const Loginpage(),
    );
  }
}
