import 'package:flutter/material.dart';
import 'package:login/classic_screen.dart';
import 'package:login/dicover_screen.dart';
import 'package:login/personal_screen.dart';
import 'package:login/daily_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          '',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 16),
          Icon(Icons.access_time, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: 4,
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
          } else if (index == 3) {
            // If "Daily" is tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DailyReportScreen()),
            );
          } else if (index == 1) {
            // If "Me" is tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DiscoverScreen()),
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            // Profile Section
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, size: 50, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Username',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View Profile >',
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Account Section
            const SectionTitle(title: 'Account'),
            _buildListTile('Edit Profile', Icons.chevron_right),
            _buildListTile('Manage Account', Icons.chevron_right),
            _buildListTile('App language', Icons.chevron_right),
            const SizedBox(height: 16),
            // About App Section
            const SectionTitle(title: 'About app'),
            _buildListTile('Clear cache', Icons.chevron_right,
                trailingText: '0.0M'),
            _buildListTile('Version', null, trailingText: '1.0.0'),
            const SizedBox(height: 16),
            // Sign Out Button
            Center(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // 🔹 Helper Widget: ListTile for settings
  Widget _buildListTile(String title, IconData? icon, {String? trailingText}) {
    return ListTile(
      title: Text(title, style: const TextStyle(fontSize: 16)),
      trailing: icon != null
          ? Icon(icon, color: Colors.black54)
          : Text(trailingText ?? '',
              style: const TextStyle(color: Colors.black54, fontSize: 16)),
      onTap: () {},
    );
  }
}

// 🔹 Helper Widget: Section Title
class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
