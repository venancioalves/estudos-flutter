import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('Voltar para primeira tela'),
      )),
    );
  }
}
