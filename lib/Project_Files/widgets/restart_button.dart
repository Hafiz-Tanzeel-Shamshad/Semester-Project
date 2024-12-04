import 'package:flutter/material.dart';

class RestartButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RestartButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        "Restart",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
