class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Dhruv's Club",
        desc: "MAN U OP!",
        price: 60,
        color: "#33505a",
        image:
            "https://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/67.png"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
