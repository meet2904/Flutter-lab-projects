import 'package:flutter/material.dart';

class Lab_6_2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.blue,)),
          Expanded(child: Container(color: Colors.red,)),
          Expanded(child: Container(color: Colors.yellow,))
        ],
      ),
    );
  }
  
}