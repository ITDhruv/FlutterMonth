import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final int days = 30;
  final String name = "Dhruwuu";
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog vai"),
      ),
      body: Center(
        child: Container(
          child: Text("Flutter OP Guys only $days by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
