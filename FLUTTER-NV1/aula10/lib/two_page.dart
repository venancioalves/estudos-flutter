import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blue,
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop('Retorno');
        },
        child: Text('Voltar para primeira tela $args'),
      )),
    );
  }
}
