class Product {
  int? id;
  String text;
  String subText;
  String price;
  String image;

  Product(
      {this.id,
      required this.text,
      required this.subText,
      required this.image,
      // required this.dollar,
      required this.price});
}

List<Product> product = [
  Product(
    id: 0,
    text: "Chicken Burger",
    subText: dummyText,
    price: '8.99',
    image: 'assets/images/chicken_burger.png',
  ),
  Product(
    id: 1,
    text: "Beef Burger",
    subText: dummyText,
    price: '8.99',
    image: 'assets/images/chicken_burger.png',
  ),
  Product(
      id: 2,
      text: "Double Chicken  Burger",
      subText: dummyText,
      price: '8.99',
      image: 'assets/images/chicken_burger.png'),
];

String dummyText =
    'Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod . . .';
