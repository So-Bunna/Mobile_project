import 'package:flutter/material.dart';
import 'package:login/dicover_screen.dart';

class Arm extends StatelessWidget {
  const Arm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Arm Workouts')),
      body: Center(child: Text('Workout details for Arm!')),
    );
  }
}
