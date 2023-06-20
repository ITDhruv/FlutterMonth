import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/widgets/themes.dart';

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
