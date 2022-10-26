import 'package:flutter/material.dart';
import 'package:flutter_application_test/home.dart';

main() => runApp(Aplication());

class Aplication extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PRIMER INTENTO DE SIDE BAR',
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Color(0xFF2F008E),
      ),
    );
  }
}
