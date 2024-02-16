import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_priject/iconfortwobutton.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Two_button extends StatelessWidget {
  const Two_button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 11, child: Container(color: Colors.yellow,)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Icons_two_button()),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                  flex: 4,
                ),
                Expanded(child: Icons_two_button()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
