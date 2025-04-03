import 'package:flutter/material.dart';
import 'package:login/classic_screen.dart';
import 'package:login/create_acc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Image
              Container(
                width: 100, // Set the desired width
                height: 100, // Set the desired height
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(10), // Optional: Rounded corners
                  image: DecorationImage(
                    image: AssetImage('assets/images/car.png'),
                    fit: BoxFit.cover, // Adjust the image fit
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Email TextField
              TextField(
                decoration: InputDecoration(
                  hintText: "Mobile number or email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
              SizedBox(height: 15),

              // Password TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
              SizedBox(height: 15),

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
                            builder: (context) => ClassicPlanScreen()));
                  },
                  child: Text("Login", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10),

              // Forgot Password
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 10),

              // Create New Account
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CreateAcc()));
                  },
                  child: Text("Create New Account"),
                ),
              ),
              SizedBox(height: 10),

              // Login with Google
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.login, color: Colors.black),
                label: Text("Login with Google",
                    style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
