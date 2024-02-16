import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Fun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TextEditingController name = new TextEditingController();
    return Scaffold(
      bottomNavigationBar: Container(
        child: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade800,
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.settings,
              text: "Settings",
            ),
            GButton(
              icon: Icons.search,
              text: "Search",
            ),
            GButton(
              icon: Icons.link,
              text: "Link",
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Meet Parekh",
          style: TextStyle(fontSize: 50),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber,
        child: Column(
          children: [
            My_Widget(name: "Meet Parekh", colors: Colors.cyanAccent),
            My_Widget(name: "name", colors: Colors.black38),
          ],
        ),
      ),
      backgroundColor: Colors.amberAccent,
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget My_Widget({required String name, required Color colors}) {
    return Text(
      name,
      style: GoogleFonts.akayaKanadaka(
          textStyle: TextStyle(
            color: colors,
          ),
          fontSize: 30),
    );
  }
}
