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
  var _texto = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_titulo),
        backgroundColor: Colors.red[700],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _texto = "Marmininu, tu clicou no botão!";
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 211, 47, 47)),
              ),
              child: Text("Clique aqui"),
            ),
            Text(_texto)
          ],
        ),
      ),
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

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _titulo = "AtanTec Motivacional";

    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("ICON1"),
              Text("ICON2"),
              Text("ICON3"),
              Text("ICON4"),
            ],
          ),
        ),
      ),
    );
  }
}
