import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("AtanTec Motivacional"),
        backgroundColor: Colors.red[700],
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Text("Conteudo"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red[400],
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Text("ICON1"),
              Text("ICON2"),
              Text("ICON3"),
              Text("ICON4"),
            ],
          ),
        ),
      ),
    ),
  ));
}
