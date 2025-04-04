import 'package:flutter/material.dart';
import 'package:login/dicover_screen.dart';

class Leg extends StatelessWidget {
  const Leg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Leg Workouts')),
      body: Center(child: Text('Workout details for Leg!')),
    );
  }
}
