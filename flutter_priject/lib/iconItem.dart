import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconItem extends StatelessWidget {
  const IconItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1st icon
        Padding(
          padding: const EdgeInsets.only(top: 4,bottom: 4),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1),color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.mic, size: 30, color: Colors.black),
              )),
        ),
        // 2nd icon
        Padding(
          padding: const EdgeInsets.only(top: 4,bottom: 4),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1),color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.attach_file, size: 30, color: Colors.black),
              )),
        ),
        // 3rd icon
        Padding(
          padding: const EdgeInsets.only(top: 4,),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1),color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.camera_alt, size: 30, color: Colors.black),
              )),
        ),
      ],
    );
  }
}
