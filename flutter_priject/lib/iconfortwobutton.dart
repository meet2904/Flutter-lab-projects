// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_priject/iconItem.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:popover/popover.dart';

class Icons_two_button extends StatelessWidget {
  const Icons_two_button({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPopover(
        backgroundColor: Colors.transparent,
        context: context,
        bodyBuilder: (context) => IconItem(),
        height: 170,
        width: 60,
        direction: PopoverDirection.top,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height:  MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(100)),
            child: Icon(Icons.arrow_drop_up,size: 50,)),
      ),
      // floatingActionButton: Container(
      //   padding: EdgeInsets.all(10),
      //   decoration: BoxDecoration(border: Border.all(width: 2),borderRadius: BorderRadius.circular(50)),
      //   child: SpeedDial(
      //
      //     backgroundColor: Colors.white,
      //     child: Icon(
      //       Icons.arrow_drop_up,
      //       color: Colors.black,
      //       size: 7,
      //     ),
      //     children: [
      //       SpeedDialChild(child: Icon(Icons.mic)),
      //       SpeedDialChild(child: Icon(Icons.attach_file)),
      //       SpeedDialChild(child: Icon(Icons.camera_alt))
      //     ],
      //   ),
      // ),
    );
  }
}
