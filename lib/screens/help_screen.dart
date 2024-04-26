import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Icon(Icons.help_center),
            ),
            SizedBox(width: 8),
            Text(
              'Help',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF883007),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Text(
              'App Overview',
              style: TextStyle(
                fontSize: 20.0, 
                fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower',
                ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Welcome to our ToDo list app! This app helps you organize your tasks and stay productive.',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'IndieFlower',
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Getting Started',
              style: TextStyle(
                fontSize: 20.0, 
                fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower',
                ),
            ),
            SizedBox(height: 10.0),
            Text(
              'To get started, simply tap on the "+" button to add a new task. You can then mark tasks as completed or delete them as needed.',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'IndieFlower',
              ),
            ),
            // Add more sections as needed
          ],
        ),
      ),
      backgroundColor: const Color(0xFFCECAB7), 
    );
  }
}
