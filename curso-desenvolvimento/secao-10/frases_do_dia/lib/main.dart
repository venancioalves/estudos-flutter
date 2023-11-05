import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Frases do dia",
      home: Container(
        color: Colors.white,
        child: Column(
          children: [
            FloatingActionButton(
              onPressed: () {
                print("Apertou o botão!");
              },
              child: Text("Botão"),
            )
          ],
        ),
      )));
}
