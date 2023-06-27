import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel.internal();
  CartModel.internal();

  factory CartModel() => cartModel;

  // catalog field
  late CatalogModel _catalog;

  //collection of Ids , stores each time
  final List<int> _itemIds = [];

  //getter for catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  //get items in the cart
  List get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
