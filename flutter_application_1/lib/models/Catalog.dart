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

class CatalogModel {
  static List<Item> item = [
    Item(
        id: 1,
        name: "Infinix hot 11s",
        desc: "64GB 4GB RAM",
        price: 32000,
        color: "33505a",
        image: "assets/images/infinx_hot11s.jpg")
  ];
}
