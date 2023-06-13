import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Dhruwuu";

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog vai"),
      ),
      body: Center(
        child: Container(
          child: Text("Flutter OP Guys only $days by $name"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
