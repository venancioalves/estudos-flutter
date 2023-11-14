import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //--------------------------------- APPBAR -----------
      appBar: AppBar(
        centerTitle: true,
        title: Text("JokenPo"),
        backgroundColor: Color.fromARGB(255, 24, 186, 54),
      ),

      //--------------------------------- BODY --------------
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            '../assets/padrao.png',
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              "Escolha uma opção abaixo:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                '../assets/pedra.png',
                height: 100,
              ),
              Image.asset(
                '../assets/papel.png',
                height: 100,
              ),
              Image.asset(
                '../assets/tesoura.png',
                height: 100,
              ),
            ],
          )
        ],
      ),
    );
  }
}
