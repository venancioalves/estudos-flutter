import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
  ));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  var _titulo = "AtanTec Motivacional";
  var _texto = "Clique no botão abaixo para gerar uma frase!";
  var _frases = [
    "O desenvolvimento é a estrada que nos leva ao futuro, e a tecnologia é o veículo que nos impulsiona.",
    "No mundo da tecnologia, cada desafio é uma oportunidade disfarçada de crescimento.",
    "A inovação é a chave para o desenvolvimento, e o suporte helpdesk é a âncora que sustenta a excelência.",
    "Em um mundo em constante evolução, o desenvolvimento é a única constante. Adapte-se e prospere!",
    "O suporte helpdesk não apenas resolve problemas; ele cria soluções e constrói confiança.",
    "Na jornada do desenvolvimento, cada linha de código é um passo em direção ao progresso.",
    "A tecnologia é a linguagem do futuro, e o desenvolvimento é a arte de fluir com ela.",
    "No suporte helpdesk, a paciência é uma virtude, e cada solução é uma vitória para o cliente.",
    "Abraçe o desafio do desenvolvimento, pois é lá que se encontram as oportunidades mais gratificantes.",
    "A tecnologia torna o impossível possível; o desenvolvimento faz disso uma realidade.",
    "No suporte helpdesk, a empatia é a ponte que conecta os problemas às soluções.",
    "O desenvolvimento é a trilha que leva da visão à realização, guiada pelo farol da tecnologia.",
    "A tecnologia é a ferramenta, o desenvolvimento é a habilidade, e o suporte helpdesk é o coração da experiência do usuário.",
    "No caminho do desenvolvimento, os obstáculos são apenas oportunidades disfarçadas.",
    "O suporte helpdesk é a voz que tranquiliza, o desenvolvimento é a mão que constrói, e juntos, formam o alicerce da excelência tecnológica."
  ];

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _texto = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //------------------------------------------------------- APP BAR --------
      appBar: AppBar(
        centerTitle: true,
        title: Text(_titulo),
        backgroundColor: Colors.red[700],
      ),

      //------------------------------------------------------- BODY -----------
      body: Container(
        padding: EdgeInsets.all(50),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/imagem.png',
              height: 250,
              width: 250,
            ),
            Text(_texto),
            ElevatedButton(
              onPressed: _gerarFrase,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 211, 47, 47)),
              ),
              child: Text("Clique aqui"),
            ),
          ],
        ),
      ),

      //------------------------------------------------------- BOTTOM ---------
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/inicio.png'),
              Image.asset('assets/buscar.png'),
              Image.asset('assets/pedidos.png'),
              Image.asset('assets/perfil.png'),
            ],
          ),
        ),
      ),
    );
  }
}
