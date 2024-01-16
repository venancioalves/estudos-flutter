import 'package:aula11/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButtonWidget(
          onPressed: () {},
          title: 'Buttom Personalizado',
        ),
      ),
    );
  }
}
