import 'package:flutter/material.dart';

class Lab_6_4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Column(
            children: [
              Expanded(child: Container(color: Colors.red,)),
              Expanded(child: Container(color: Colors.blue,)),
              Expanded(child: Container(color: Colors.black,))
            ],
          )),
          Expanded(child: Column(
            children: [
              Expanded(child: Container(color: Colors.green,),flex: 2,),
              Expanded(child: Container(color: Colors.yellow,),flex: 2,),
              Expanded(child: Container(color: Colors.pink,))
            ],
          )),
          Expanded(child: Column(
            children: [
              Expanded(child: Container(color: Colors.purple,)),
              Expanded(child: Container(color: Colors.orange,),flex: 2,),
              Expanded(child: Container(color: Colors.cyanAccent,))
            ],
          ))
        ],
      ),
    );
  }
}