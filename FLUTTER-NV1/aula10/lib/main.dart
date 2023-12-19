import 'package:aula10/one_page.dart';
import 'package:aula10/two_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (_) => const OnePage(), '/twopage': (_) => const TwoPage()},
    );
  }
}
