import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mandac", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Column(children: [
            Container(
              height: 200,
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
          onTap: (int page) => _pageController.animateToPage(page,
              duration: Duration(milliseconds: 300), curve: Curves.ease),
          items: [
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
