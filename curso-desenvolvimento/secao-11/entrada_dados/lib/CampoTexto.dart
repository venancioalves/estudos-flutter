import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(32),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Digite um valor"),

            //se quiser desabilitar um campo
            //enabled: true,

            maxLength: 5,
          ),
        )
      ]),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text("Sou o rodapé")],
          ),
        ),
      ),
    );
  }
}
