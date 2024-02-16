import 'package:flutter/material.dart';

class extra_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.redAccent,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.blueAccent,
              ),),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.greenAccent,
                  )),
                  Expanded(child: Container(color: Colors.grey,))
                ],
              ))
            ],
          )),Expanded(child: Row(children: [
            Expanded(child: Container(color: Colors.yellowAccent,)),
            Expanded(child: Container(color: Colors.pinkAccent,)),
            Expanded(child: Container(color: Colors.blue,)),
          ],))
        ],
      ),
    );
  }
}
