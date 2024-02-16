import 'package:flutter/material.dart';

class Lab_6_3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: Container(child: Center(child: Text("meet")),color: Colors.red,)),
              Expanded(child: Container(color: Colors.blue,)),
              Expanded(child: Container(color: Colors.black,))
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.green,)),
              Expanded(child: Container(color: Colors.yellow,)),
              Expanded(child: Container(color: Colors.pink,))
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.purple,)),
              Expanded(child: Container(color: Colors.orange,)),
              Expanded(child: Container(color: Colors.cyanAccent,))
            ],
          ))
        ],
      ),
    );
  }
}