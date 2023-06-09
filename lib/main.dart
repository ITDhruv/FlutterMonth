import 'package:flutter/material.dart';
import 'package:flutter_catalog/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    // num dono lega
    // var compiler decide karega

    return MaterialApp(
      home: HomePage(),
    );
  }
}
