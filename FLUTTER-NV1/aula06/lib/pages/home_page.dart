import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mandac", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Column(children: [
        Container(
          height: 400,
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
      ]),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.grey),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'list'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Home')
      ]),
    );
  }
}
