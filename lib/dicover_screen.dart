import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiscoverScreen(),
    );
  }
}

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Classic'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Discover'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Personal'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Daily'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Me'),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'DISCOVER',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.notifications),
                ],
              ),
              SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2,
                children: [
                  _buildWorkoutCard(context, 'Six pack', '8 Workouts',
                      'assets/images/sixpack.jpg', SixPackScreen()),
                  _buildWorkoutCard(context, 'Arm', '8 Workouts',
                      'assets/images/hand.jpg', null),
                  _buildWorkoutCard(context, 'Chest', '7 Workouts',
                      'assets/images/fit.jpg', null),
                  _buildWorkoutCard(context, 'Butt & Leg', '8 Workouts',
                      'assets/images/foot.jpg', null),
                ],
              ),
              SizedBox(height: 20),
              Text("Today's Quick Start",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              _buildQuickStartCard(),
              SizedBox(height: 20),
              Text("Pick for you",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    _buildPickForYouCard('Belly fat burner HIIT',
                        '14 min  Beginner', 'assets/images/fat_burn.jpg'),
                    _buildPickForYouCard('Full Body Workout',
                        '20 min  Intermediate', 'assets/images/fat.jpg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWorkoutCard(BuildContext context, String title, String subtitle,
      String imagePath, Widget? targetScreen) {
    return GestureDetector(
      onTap: () {
        if (targetScreen != null) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => targetScreen));
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(imagePath, width: 50, height: 50),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(subtitle, style: TextStyle(color: Colors.grey)),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildQuickStartCard() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage('assets/images/car.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'GET RID OF MAN BOOBS HIIT',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Start'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPickForYouCard(String title, String subtitle, String imagePath) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(imagePath, width: 80, height: 80),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(subtitle, style: TextStyle(color: Colors.grey)),
            ],
          )
        ],
      ),
    );
  }
}

class SixPackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Six Pack Workouts')),
      body: Center(child: Text('Workout details for Six Pack!')),
    );
  }
}
