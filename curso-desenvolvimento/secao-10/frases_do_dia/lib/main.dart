import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Frases do dia",
      home: Container(
        //color: Colors.white,
        padding: EdgeInsets.only(top: 40),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border:
                Border.all(width: 5, color: Color.fromARGB(255, 111, 255, 0))),
        child: Image.asset('01.jpeg'),
      )));
}
