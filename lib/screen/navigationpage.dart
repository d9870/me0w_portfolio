import 'package:flutter/material.dart';
import 'package:me0w_portfolio/screen/home_screen.dart';
import 'package:me0w_portfolio/screen/project_screen.dart';
import 'package:me0w_portfolio/screen/teamprofile.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    ProjectScreen(),
    TeamProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.lightBlue,
        selectedItemColor: Colors.yellow,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Projects',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Team',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
