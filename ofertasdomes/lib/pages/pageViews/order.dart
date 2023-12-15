import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.pink,
      ),
      child: Center(
        child: Text(
          'Pedidos',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
