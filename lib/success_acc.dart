import 'package:flutter/material.dart';
import 'package:login/login_screen.dart';

class SuccessAccountScreen extends StatelessWidget {
  const SuccessAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Success Icon
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 100,
              ),
              SizedBox(height: 20),

              // Success Message
              Text(
                "Account Created Successfully!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),

              // Description
              Text(
                "You can now log in to your account and start using the app.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),

              // Go to Login Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                LoginScreen())); // Navigate back to the previous screen
                  },
                  child: Text(
                    "Go to Login",
                    style: TextStyle(color: Colors.white, fontSize: 18),
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
