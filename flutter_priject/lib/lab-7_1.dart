import 'package:flutter/material.dart';

class Lab_7_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Hello word",
          style: TextStyle(color: Colors.blueAccent, fontSize: 50),
        ),
      ),
      backgroundColor: Colors.pinkAccent,
    );
  }
}
