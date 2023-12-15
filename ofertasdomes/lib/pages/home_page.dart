import 'package:flutter/material.dart';
import 'pageViews/home.dart';
import 'pageViews/search.dart';
import 'pageViews/order.dart';
import 'pageViews/user.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ofertas do Mês", style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 206, 19, 6),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Home(),
          Search(),
          Order(),
          User(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

          //faz o contador das paginas
          currentIndex: indexBottomNavigationBar,
          onTap: (int page) {
            setState(() {
              indexBottomNavigationBar = page;
            });
            _pageController.animateToPage(page,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('assets/inicio.png'), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset('assets/buscar.png'), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset('assets/pedidos.png'), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset('assets/perfil.png'), label: "")
          ]),
    );
  }
}
