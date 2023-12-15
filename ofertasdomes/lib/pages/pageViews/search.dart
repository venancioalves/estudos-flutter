import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.purple,
      ),
      child: Center(
        child: Text(
          'Buscar',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
