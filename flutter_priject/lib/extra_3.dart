import 'package:flutter/material.dart';

class extra_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            child: Row(children: [
              Expanded(child: Container(color: Colors.blue,),flex: 3,),
              Expanded(child: Column(children: [
                Expanded(child: Row(children: [Expanded(child: Container(color: Colors.orangeAccent,)),Expanded(child: Container(color: Colors.orange,))],)),
                Expanded(child: Row(children: [Expanded(child: Container(color: Colors.purple,)),Expanded(child: Container(color: Colors.purpleAccent,))],))
              ],))
            ],
        )),
        Expanded(
            child: Row(children: [
              Expanded(child: Container(color: Colors.pink,)),
              Expanded(child: Row(children: [
                Expanded(child: Column(children: [
                  Expanded(child: Container(color: Colors.green,),flex: 2,),
                  Expanded(child: Container(color: Colors.green.shade300,),flex: 3,),
                  Expanded(child: Container(color: Colors.green.shade800,),flex: 1,)
                ],)),
                Expanded(child: Column(children: [
                  Expanded(child: Container(color: Colors.yellow,),flex: 2,),
                  Expanded(child: Container(color: Colors.yellow.shade300,),flex: 1,),
                  Expanded(child: Container(color: Colors.yellow.shade800,),flex: 2,)
                ],)),
                Expanded(child: Column(children: [
                  Expanded(child: Container(color: Colors.purple.shade200,),flex: 1,),
                  Expanded(child: Container(color: Colors.purple.shade300,),flex: 1,),
                  Expanded(child: Container(color: Colors.purple.shade800,),flex: 1,)
                ],))
              ],)),
              Expanded(child: Container(color: Colors.pink.shade100,))
            ],)),
        Expanded(child: Row(children: [
          Expanded(child: Container(color: Colors.grey,)),
          Expanded(child: Container(color: Colors.grey.shade300,)),
          Expanded(child: Container(color: Colors.grey.shade800,))
        ],))
      ]),
    );
  }
}
