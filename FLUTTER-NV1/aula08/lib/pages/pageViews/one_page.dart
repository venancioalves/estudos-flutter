import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            'Olá Mundo!',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
      Row(
        children: [
          Container(
            color: Colors.red,
            height: 100,
            width: 150,
          ),
          Container(
            color: Color.fromARGB(255, 226, 5, 215),
            height: 100,
            width: 150,
          ),
        ],
      )
    ]);
  }
}
