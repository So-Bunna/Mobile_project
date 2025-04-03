import 'dart:math';

import 'package:flutter/material.dart';
import 'package:login/dicover_screen.dart';
import 'package:login/me_screen.dart';

class ClassicPlanScreen extends StatefulWidget {
  const ClassicPlanScreen({super.key});

  @override
  State<ClassicPlanScreen> createState() => _ClassicPlanScreenState();
}

class _ClassicPlanScreenState extends State<ClassicPlanScreen> {
  String selectedCategory = 'Beginner';

  final Map<String, List<Map<String, String>>> workouts = {
    'Beginner': [
      {'title': 'Abs Beginner', 'duration': '18 mins'},
      {'title': 'Chest Beginner', 'duration': '8 mins'},
      {'title': 'Arm Beginner', 'duration': '16 mins'},
      {'title': 'Leg Beginner', 'duration': '22 mins'},
      {'title': 'Shoulder & Back Beginner', 'duration': '20 mins'},
    ],
    'Intermediate': [
      {'title': 'Abs Intermediate', 'duration': '25 mins'},
      {'title': 'Chest Intermediate', 'duration': '13 mins'},
      {'title': 'Arm Intermediate', 'duration': '24 mins'},
      {'title': 'Leg Intermediate', 'duration': '36 mins'},
      {'title': 'Shoulder & Back Intermediate', 'duration': '17 mins'},
    ],
    'Advanced': [
      {'title': 'Abs Advanced', 'duration': '30 mins'},
      {'title': 'Chest Advanced', 'duration': '15 mins'},
      {'title': 'Arm Advanced', 'duration': '28 mins'},
      {'title': 'Leg Advanced', 'duration': '40 mins'},
      {'title': 'Shoulder & Back Advanced', 'duration': '25 mins'},
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Classic Plan',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 16),
          Icon(Icons.more_horiz, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            // If "Discover" is tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DiscoverScreen()),
            );
            // } else if (index == 2) {
            //   // If "Personal" is tapped
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => HomeScreen()),
            //   );
            // } else if (index == 3) {
            //   // If "Daily" is tapped
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => ClassicPlanScreen()),
            //   );
          } else if (index == 4) {
            // If "Me" is tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Classic'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Discover'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Personal'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Daily'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Me'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            // Horizontal Scrollable Cards
            SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildWorkoutCard(
                    title: 'MASSIVE UPPER BODY',
                    subtitle:
                        'Lose belly fat, get ripped abs in just 4 weeks with this efficient plan.',
                    buttonText: 'Start',
                    color: Colors.blue[900]!,
                  ),
                  const SizedBox(width: 12),
                  _buildWorkoutCard(
                    title: 'GET RIPPED WITH DUMBBELL',
                    subtitle:
                        'Use dumbbells to train all muscle groups and get stronger.',
                    buttonText: 'Start',
                    color: Colors.teal,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Quick Start Section
            const Text(
              'QUICK START',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'Classic Workout Plan',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildFilterButton('Beginner'),
                _buildFilterButton('Intermediate'),
                _buildFilterButton('Advanced'),
              ],
            ),
            const SizedBox(height: 12),
            // Vertical Scrollable List
            Expanded(
              child: ListView(
                children: workouts[selectedCategory]!
                    .map((workout) => _buildWorkoutItem(
                        workout['title']!, workout['duration']!))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper Widget: Horizontal Workout Card
  Widget _buildWorkoutCard(
      {required String title,
      required String subtitle,
      required String buttonText,
      required Color color}) {
    return Container(
      width: 260,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.grey[300], // Placeholder for blank image
            ),
          ),
          const SizedBox(height: 8),
          Text(title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16)),
          const SizedBox(height: 4),
          Text(subtitle,
              style: const TextStyle(color: Colors.white70, fontSize: 12)),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, foregroundColor: color),
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }

  // Helper Widget: Filter Button
  Widget _buildFilterButton(String category) {
    bool isSelected = selectedCategory == category;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = category;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(16),
          color: isSelected ? Colors.black : Colors.white,
        ),
        child: Text(
          category,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // Helper Widget: Vertical List Item
  Widget _buildWorkoutItem(String title, String duration) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 50,
          height: 50,
          color: Colors.grey[300], // Placeholder for blank image
        ),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(duration, style: TextStyle(color: Colors.grey[600])),
      trailing:
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black54),
    );
  }
}
