// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/home_details_page.dart';
import 'package:flutter_catalog/utils/widgets/themes.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeDetailPage(
                        catalog: catalog,
                      ))),
          child: CatalogItem(catalog: catalog),
        );
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
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
      color: Colors.white,
      constraints: const BoxConstraints(
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
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image)),
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
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(MyTheme.darkBlue),
                            shape: MaterialStateProperty.all(StadiumBorder())),
                        child: const Text("Buy"),
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
