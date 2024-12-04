import 'package:flutter/material.dart';
import 'screens/game_screen.dart';

// void main() {
//   runApp(TicTacToeApp());
// }

class TicTacToeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe',
      theme: ThemeData(
        primarySwatch: Colors.teal, // Updated primary color to teal
        scaffoldBackgroundColor: Colors.blueGrey[50], // Lighter background color for the whole app
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.lightBlueAccent, // Changed the app bar color to teal
          elevation: 5, // Slight elevation for a modern look
          titleTextStyle: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white, // Text color for app bar title
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.teal, // Buttons will have this background color
          textTheme: ButtonTextTheme.primary, // Button text color will be light
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity, // Adjust layout for different screen sizes
      ),
      home: GameScreen(),
    );
  }
}
