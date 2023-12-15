import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      child: Center(
        child: Text(
          'Perfil',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
    ;
  }
}
