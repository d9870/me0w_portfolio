import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '''
              Hello, I'm Deepak Vishwakarma 👋
              
              Meet Our Team Members 👇
              
              Deepak Vishwakarma 😎
              Satyam Maurya 😕 
              Shubham Chavan 🤑
              ''',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              '''
              Our Github Organisation : 
              Me0w-Me0w-Me0w 😼''',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '''
            Tech Aspirants😎
              
              Our Stack 👇
              ReactJs 
              Tailwind CSS
              NodeJs
              Django
              Flutter
              ''',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
