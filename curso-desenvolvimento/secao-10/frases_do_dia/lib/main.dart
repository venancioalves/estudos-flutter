import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Frases do dia",
      home: Container(
        //color: Colors.white,
        padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
            border: Border.all(
                width: 5, color: const Color.fromARGB(255, 255, 0, 0))),
        child: Column(
          children: [
            Text("T1"),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text("T2"),
            ),
            Text("T3"),
          ],
        ),
      )));
}
