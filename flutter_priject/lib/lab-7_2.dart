import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Lab_7_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TextEditingController name = new TextEditingController();
    return Scaffold(
        backgroundColor: Colors.black38,
        body: Center(
          child: My_Widget(name: "My name is Parekh Meet", colors: Colors.green,),
        ));
  }

  Widget My_Widget({required String name, required Color colors}) {
    return Text(
      name,
      style: GoogleFonts.akayaKanadaka(
          textStyle: TextStyle(
            color: colors,
          ),
          fontSize: 50),
    );
  }
}
