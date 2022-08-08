class CatalogModel{
  static final items = [
    Item(
        id: 1,
        name: "Iphone 12 pro",
        desc: "Apple Iphone 12th Generation",
        price: 999,
        color: "Golden",
        image: "https://images.unsplash.com/photo-1611791485440-24e8239a0377?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aXBob25lJTIwMTIlMjBwcm98ZW58MHx8MHx8&w=1000&q=80",
    )
  ];
}


class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}