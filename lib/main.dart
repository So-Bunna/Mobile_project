import 'package:flutter/material.dart';
import 'package:login/confirm_acc.dart';
import 'package:login/login_screen.dart';
import 'package:login/create_acc.dart';
import 'package:login/success_acc.dart';
import 'package:login/dicover_screen.dart';
import 'package:login/classic_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}
