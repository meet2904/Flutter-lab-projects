import 'package:flutter/material.dart';

class extra_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.blue,child: Center(child: Text("BLUE",style: TextStyle(color: Colors.white),)),)),
              Expanded(child: Container(color: Colors.pink,child: Center(child: Text("PIKN",style: TextStyle(color: Colors.white),),),)),
              Expanded(child: Container(color: Colors.red,child: Center(child: Text("RED",style: TextStyle(color: Colors.white),),),)),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.green,child: Center(child: Text("GREEN",style: TextStyle(color: Colors.white),),),)),
              Expanded(child: Container(color: Colors.purple,child: Center(child: Text("PURPLE",style: TextStyle(color: Colors.white)),),)),
              Expanded(child: Container(color: Colors.yellow,child: Center(child: Text("YELLOW",style: TextStyle(color: Colors.white),),),)),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.grey,child: Center(child: Text("GREAY",style: TextStyle(color: Colors.white),),),)),
              Expanded(child: Container(color: Colors.brown,child: Center(child: Text("BROWN",style: TextStyle(color: Colors.white),),),)),
              Expanded(child: Container(color: Colors.orange,child: Center(child: Text("ORANGE",style: TextStyle(color: Colors.white),),),)),
            ],
          ))
        ],
      ),
    );
  }
}