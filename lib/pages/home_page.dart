// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/utils/widgets/drawer.dart';
import 'package:flutter_catalog/utils/widgets/themes.dart';
// import 'package:flutter_catalog/utils/widgets/item_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Dhruwuu";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(children: [
            CatalogHeader(),
            if (CatalogModel.items.isNotEmpty)
              Expanded(child: CatalogList())
            else
              Center(
                child: CircularProgressIndicator(),
              )
          ]),
        ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Catalog Application",
        style: TextStyle(
            fontSize: 26, fontWeight: FontWeight.bold, color: MyTheme.darkBlue),
      ),
      Text(
        "Trending Clubs",
        style: TextStyle(
          fontSize: 20,
        ),
      )
    ]);
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalog: catalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
      color: Colors.white,
      constraints: BoxConstraints(
        minWidth: 60.0,
        maxWidth: 170.0,
        minHeight: 60.0,
        maxHeight: 170.0,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          color: MyTheme.creamColor,
          shape: StadiumBorder(),
          child: Row(
            children: [
              Image.network(catalog.image),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    catalog.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: MyTheme.darkBlue),
                  ),
                  Text(
                    catalog.desc,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "\$${catalog.price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Buy"),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(MyTheme.darkBlue),
                            shape: MaterialStateProperty.all(StadiumBorder())),
                      )
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
