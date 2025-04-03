import 'package:flutter/material.dart';
import 'package:login/confirm_acc.dart';

class CreateAcc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),

              Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Create an account to continue"),
              SizedBox(height: 70),

              // Email TextField
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "We will send you a verification code to your email",
                style: TextStyle(color: Colors.grey),
              ),

              SizedBox(height: 70),

              // Login Button
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
                        builder: (context) => ConfirmAcc(),
                      ),
                    );
                  },
                  child:
                      Text("Continue", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
