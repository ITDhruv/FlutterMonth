import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Dhruwuu";

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog Application"),
      ),
      body: Center(
        child: Container(
          child: Text("Flutter OP Guys only $days by $name"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
