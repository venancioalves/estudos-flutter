import 'package:aula10/two_page.dart';
import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .pushNamed('/twopage', arguments: 'teste')
              .then((value) => print(value));
        },
        child: Text('Ir para segunda tela'),
      )),
    );
  }
}
