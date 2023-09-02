import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(20.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 150.0,
            width: 400.0,
            decoration: const BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Patoplace',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                const Text(
                  'Website Project',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    launch('https://github.com/me0w-me0w-me0w/website');
                  },
                  child: Text('View on GitHub'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
