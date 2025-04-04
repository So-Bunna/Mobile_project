import 'package:flutter/material.dart';
import 'package:login/dicover_screen.dart';

class SixPackScreen extends StatelessWidget {
  const SixPackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Six Pack Workouts')),
      body: Center(child: Text('Workout details for Six Pack!')),
    );
  }
}
