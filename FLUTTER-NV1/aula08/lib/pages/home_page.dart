import 'package:flutter/material.dart';
import 'pageViews/one_page.dart';

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
        title: Text("AppBar", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Venâncio'),
              accountEmail: Text('venancio@mandac.com.br'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              ),
              decoration: BoxDecoration(color: Colors.green),
            ),
            //mostrar linha da lista
            ListTile(
              title: Text('Inicio'),
              trailing: Icon(Icons.home),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 0;
                });
              },
            ),
            ListTile(
              title: Text('Buscar'),
              trailing: Icon(Icons.search),
              onTap: () {
                _pageController.jumpToPage(1);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 1;
                });
              },
            ),
            ListTile(
              title: Text('Servicos'),
              trailing: Icon(Icons.list),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 2;
                });
              },
            ),
            ListTile(
              title: Text('Perfil'),
              trailing: Icon(Icons.person),
              onTap: () {
                _pageController.jumpToPage(3);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 3;
                });
              },
            )
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          OnePage(),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.purple,
          ),
          Container(
            color: Colors.yellow,
          ),
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
                icon: Icon(Icons.home, color: Colors.grey), label: 'Inicio'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                label: 'Buscar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.list, color: Colors.grey), label: 'Serviços'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.grey), label: 'Perfil')
          ]),
    );
  }
}
