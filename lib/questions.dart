import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  var Questiontext;

  Questions(this.Questiontext);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        Questiontext,
        style: TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(10),
      color: Colors.blueAccent,
      padding: EdgeInsets.all(5),
      // decoration: BoxDecoration(
      //     border: Border.all(
      //      width: 2,
      // ),borderRadius: BorderRadius.all(Radius.circular(10.0))),
      // alignment: Alignment.center,
    );
  }
}
