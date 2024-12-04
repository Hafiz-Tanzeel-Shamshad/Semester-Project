import 'package:flutter/material.dart';

import 'Project_Files/TicTacToeApp.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 4.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Cool Title of the Home Page
            Text(
              'Welcome to Your App!',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                letterSpacing: 2.0,
                shadows: [
                  Shadow(
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Subtitle with a cool description
            Text(
              'Choose an option below to get started. Explore the weather, manage your posts, or play Tic Tac Toe!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.7),
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),

            // Button to Go to Weather App with Gradient
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the Weather page
                  Navigator.pushNamed(context, '/weather');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, // Blue gradient button
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 10,
                  shadowColor: Colors.blueAccent.withOpacity(0.5),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_sunny, size: 28, color: Colors.white), // Weather icon
                    SizedBox(width: 10),
                    Text('Go to Weather App', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Button to Go to CRUD App with Icon and Shadow Effect
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the Add New Post page
                  Navigator.pushNamed(context, '/addPost');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent, // Green gradient button
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 10,
                  shadowColor: Colors.greenAccent.withOpacity(0.5),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.create, size: 28, color: Colors.white), // CRUD icon
                    SizedBox(width: 10),
                    Text('Go to CRUD App', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Button to Go to Tic Tac Toe Game
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {

                  Navigator.pushNamed(context, '/ticTacToe');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent, // Purple gradient button
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 10,
                  shadowColor: Colors.purpleAccent.withOpacity(0.5),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.gamepad, size: 28, color: Colors.white), // Gamepad icon
                    SizedBox(width: 10),
                    Text('Play Tic Tac Toe', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Optional Button: Learn More with Cool Outlined Style
            OutlinedButton(
              onPressed: () {
                // Action for Learn More button
                print("Learn More Pressed");
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.blueAccent, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text(
                'Learn More',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
