import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lab_7_3 extends StatefulWidget {
  @override
  State<Lab_7_3> createState() => _Lab_7_3State();
}

class _Lab_7_3State extends State<Lab_7_3> {
  TextEditingController tepm=TextEditingController();

  String result="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: tepm,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              focusedBorder: (OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent),
              )),
              labelText: "Enter E-Mail",
              hintText: "abc@Example.com",
            ),
          ),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: () {
            print(tepm.text);
            setState(() {
              result=tepm.text;
            });
          }, child: Text("Print")),
          SizedBox(height: 40,),
          Container(child: Text(result,style: GoogleFonts.allertaStencil(textStyle: TextStyle(fontSize: 30))),)
        ],
      ),
    );
  }
}
