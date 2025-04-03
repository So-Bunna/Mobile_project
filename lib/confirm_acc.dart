import 'package:flutter/material.dart';
import 'package:login/success_acc.dart';

class ConfirmAcc extends StatelessWidget {
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
                "Confirm Account",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Enter the code sent to your email"),
              Text('we will send you a verification code to your email'),
              Text(
                  'if you did not receive the code, please check your spam folder'),
              SizedBox(height: 70),

              // Email TextField
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter code",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
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
                            builder: (context) => SuccessAccountScreen()));
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
