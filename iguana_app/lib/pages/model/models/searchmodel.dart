class Search {
  int? id;
  String text;
  String subText;
  String price;
  String image;

  Search(
      {this.id,
      required this.text,
      required this.subText,
      required this.image,
      // required this.dollar,
      required this.price});
}

List<Search> searchproduct = [
  Search(
      id: 0,
      text: "Peri Peri Chicken",
      subText: dummyText,
      price: '8.99',
      image: 'assets/images/periperi_cat.png'

      //image: 'assets/images/chicken_burger.png',
      ),
  Search(
    id: 1,
    text: "Double Beef Pizza ",
    subText: dummyText,
    price: '8.99',
    image: 'assets/images/mushroom_pizza.png',
    //image: 'assets/images/chicken_burger.png',
  ),
  Search(
      id: 2,
      text: "Peri Peri Chicken",
      subText: dummyText,
      price: '8.99',
      image: 'assets/images/periperi_cat.png'),

  // image: 'assets/images/chicken_burger.png'),
  Search(
    id: 3,
    text: "Peri Peri Chicken",
    subText: dummyText,
    price: '8.99',
    image: 'assets/images/mushroom_pizza.png',
    //image: 'assets/images/periperi_cat.png'
  ),
  Search(
    id: 4,
    text: "Double Beef Pizza",
    subText: dummyText,
    price: '8.99',
    // image: 'assets/images/chicken_burger.png',
    image: 'assets/images/mushroom_pizza.png',
  ),
  Search(
      id: 5,
      text: "Double Beef Pizza",
      subText: dummyText,
      price: '8.99',
      image: 'assets/images/mushroom_pizza.png'
      //image: 'assets/images/chicken_burger.png',
      ),
];

String dummyText =
    'Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod . . .';
//iguana_app\assets\mushroom_pizza.png

