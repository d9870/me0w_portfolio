import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Me0w Me0w Me0w!',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'We are a talented team of developers working together to create amazing projects.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Open the GitHub organization page
                // You can use the url_launcher package to open URLs
                launch('https://github.com/me0w-me0w-me0w');
              },
              child: Text('Visit our GitHub Organization'),
            ),
          ],
        ),
      ),
    );
  }
}
