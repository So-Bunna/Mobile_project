import 'package:flutter/material.dart';
import 'package:login/classic_screen.dart';
import 'package:login/dicover_screen.dart';
import 'package:login/me_screen.dart';
import 'package:login/personal_screen.dart';

class DailyReportScreen extends StatelessWidget {
  const DailyReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: 3,
        onTap: (index) {
          if (index == 0) {
            // If "Classic" is tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ClassicPlanScreen()),
            );
          } else if (index == 2) {
            // If "Personal" is tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          } else if (index == 1) {
            // If "Daily" is tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DiscoverScreen()),
            );
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Daily report',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 10),
                        Icon(Icons.history),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade300, blurRadius: 5)
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildStatColumn(Icons.emoji_events, '1', 'Workout'),
                      _buildStatColumn(
                          Icons.local_fire_department, '0', 'Kcal'),
                      _buildStatColumn(Icons.access_time, '0', 'Minute'),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 35, 2, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          child: Text('History',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Full-width Image at the bottom
                      Image.asset(
                        'assets/images/daily.jpg',
                        width: double.infinity, // Makes the image full width
                        fit: BoxFit
                            .cover, // Ensures the image covers the available space while keeping aspect ratio
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatColumn(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.blue),
        Text(value,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text(label, style: TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    );
  }
}
