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
    // Item(
    //     id: 2,
    //     name: "Aaryan's Club",
    //     desc: "MAN C OP!",
    //     price: 80,
    //     color: "#33505a",
    //     image:
    //         "https://upload.wikimedia.org/wikipedia/en/thumb/e/eb/Manchester_City_FC_badge.svg/1200px-Manchester_City_FC_badge.svg.png")
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
