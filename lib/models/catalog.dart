class Item {
  final String id;
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

final products = [
  Item(
      id: "Jodd 1",
      name: "Dhruv Jod",
      desc: "Sarvodaya(W)",
      price: 20,
      color: "#33505a",
      image:
          "https://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/67.png")
];
