// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';
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
      color: MyTheme.darkBlue,
      constraints: const BoxConstraints(
        minWidth: 70.0,
        maxWidth: 185.0,
        minHeight: 70.0,
        maxHeight: 185.0,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          color: MyTheme.darkcreamColor,
          shape: const StadiumBorder(),
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
                        fontWeight: FontWeight.bold,
                        color: MyTheme.lightBluishColor),
                  ),
                  Text(
                    catalog.desc,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "\$${catalog.price}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      AddToCart(catalog: catalog)
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    ).py8();
  }
}


