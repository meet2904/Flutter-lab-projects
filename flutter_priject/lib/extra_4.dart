import 'package:flutter/material.dart';

class extra_4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(child: Row(children: [
          Expanded(child: Container(color: Colors.blue,)),
          Expanded(child: Container(color: Colors.blue.shade100,)),
        ],))
      ],),
    );
  }

}