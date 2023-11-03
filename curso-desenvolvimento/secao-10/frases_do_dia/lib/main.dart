import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Frases do dia",
      home: Container(
        color: Colors.red,
        child: Column(
          children: [
            Text(
              "Bem vindo ao Grupo Atan! Somos o maior distribuidor de eletrodomesticos do Nordeste!",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      )));
}
