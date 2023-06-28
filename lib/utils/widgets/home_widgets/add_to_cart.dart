import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  const AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isinCart = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isinCart) {
          AddMutation(catalog);
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.cardColor),
          shape: MaterialStateProperty.all(const StadiumBorder())),
      child: isinCart
          ? const Icon(Icons.done)
          : const Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
