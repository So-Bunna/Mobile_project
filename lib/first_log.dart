import 'package:flutter/material.dart';
import 'package:login/classic_screen.dart';
import 'package:login/L4.dart';

class PersonalCoachScreen extends StatelessWidget {
  const PersonalCoachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/hello.jpg'),
              ),
              const SizedBox(height: 24),
              const Text(
                "Hello!",
                style: TextStyle(
                  fontFamily: 'Lato-Bold',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "I'm your personal coach.\nHere are some questions to tailor a",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lato-Regular',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
              const Text(
                "personalized plan for you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lato-Regular',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FitnessApp()));
                  },
                  child: const Text(
                    "I’M READY",
                    style: TextStyle(
                      fontFamily: 'Lato-Bold',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
