import 'package:flutter/material.dart';
import 'package:login/classic_screen.dart';
import 'package:login/first_log.dart';

ButtonStyle buttonStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.black,
    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 18),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    side: const BorderSide(color: Colors.black),
  );
}

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FocusAreaScreen(),
    );
  }
}

// --- Screen 1: Focus Area ---
class FocusAreaScreen extends StatefulWidget {
  @override
  _FocusAreaScreenState createState() => _FocusAreaScreenState();
}

class _FocusAreaScreenState extends State<FocusAreaScreen> {
  String selectedFocus = "";

  final List<String> options = [
    'Arm',
    'Shoulder',
    'Chest',
    'Abs',
    'Leg',
    'Full body'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("What’s your\nfocus area?",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 32),
            ...options.map((option) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: buildOptionButton(option),
                )),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (selectedFocus.isNotEmpty) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GoalScreen()));
                  }
                },
                style: buttonStyle(),
                child: const Text("Next", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOptionButton(String text) {
    bool isSelected = selectedFocus == text;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedFocus = text;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.black,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.black),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// --- Screen 2: Goal ---
class GoalScreen extends StatefulWidget {
  @override
  _GoalScreenState createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  String selectedGoal = "";

  final List<String> goals = ['Lose Weight', 'Build Muscle', 'Keep Fit'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("What’s your\nmain goal?",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            ...goals.map((goal) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: buildOptionButton(goal),
                )),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (selectedGoal.isNotEmpty) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ClassicPlanScreen()));
                  }
                },
                style: buttonStyle(),
                child: const Text("Next", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOptionButton(String text) {
    bool isSelected = selectedGoal == text;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedGoal = text;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 60,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.black,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    );
  }
}

class BodyShapeScreen extends StatefulWidget {
  @override
  _BodyShapeScreenState createState() => _BodyShapeScreenState();
}

class _BodyShapeScreenState extends State<BodyShapeScreen> {
  String selectedShape = "";
  bool isButtonClicked = false; // Track button state

  final List<String> shapes = ['Medium', 'Flabby', 'Skinny', 'Muscular'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Title ---
            const Text.rich(
              TextSpan(
                text: "What’s your ",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: "current ", style: TextStyle(color: Colors.blue)),
                  TextSpan(text: "body shape?"),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // --- Body Shape Options ---
            ...shapes.map((shape) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: buildOptionButton(shape),
                )),

            const Spacer(),

            // --- Next Button ---
            Center(
              child: ElevatedButton(
                onPressed: selectedShape.isEmpty
                    ? null
                    : () {
                        setState(() {
                          isButtonClicked =
                              true; // Change button color when clicked
                        });

                        // Navigate to WelcomeScreen after a slight delay
                        Future.delayed(const Duration(milliseconds: 300), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BodyShapeScreen(),
                            ),
                          );
                        });
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: isButtonClicked
                      ? Colors.white
                      : Colors.black, // Change color on click
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 18),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  side: const BorderSide(color: Colors.black),
                ),
                child: Text(
                  "Start",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: isButtonClicked
                        ? Colors.black
                        : Colors.white, // Text color changes too
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // --- Body Shape Option Buttons ---
  Widget buildOptionButton(String text) {
    bool isSelected = selectedShape == text;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedShape = text;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 60,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.black,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    );
  }
}
