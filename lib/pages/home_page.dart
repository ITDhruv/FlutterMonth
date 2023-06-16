import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/utils/widgets/drawer.dart';
import 'package:flutter_catalog/utils/widgets/item_widgets.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Dhruwuu";

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(3, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog Application"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
