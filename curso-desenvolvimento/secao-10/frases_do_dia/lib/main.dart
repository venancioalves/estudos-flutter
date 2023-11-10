import 'package:flutter/material.dart';

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
  var _texto = "Clique no botão abixo para gerar uma frase!";

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
              'imagem.png',
              height: 250,
              width: 250,
            ),
            Text(
              _texto,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _texto = "Commit na main e justa causa!";
                });
              },
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
              Image.asset('inicio.png'),
              Image.asset('buscar.png'),
              Image.asset('pedidos.png'),
              Image.asset('perfil.png'),
            ],
          ),
        ),
      ),
    );
  }
}
