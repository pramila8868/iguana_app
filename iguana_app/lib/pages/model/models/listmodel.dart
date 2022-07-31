class Food {
  int? id;
  String foodName;
  String foodType;
  String text;
  String subText;
  //String dollar;
  String price;

  Food(
      {this.id = 0,
      required this.foodName,
      required this.foodType,
      required this.text,
      required this.subText,
      // required this.dollar,
      required this.price});
}

List<Food> food = [
  Food(
    id: 0,
    foodName: "Double Chicken Burger",
    foodType: 'Double patty',
    text: dummyText,
    subText: dummyText1,
    price: '8.99',
  ),
  Food(
      id: 1,
      foodName: "Mexican Tostada ",
      foodType: 'More Vegies',
      text: dummyText,
      subText: dummyText1,
      price: '12.99'),
];

String dummyText = "Special Instructions";
String dummyText1 = '"Some special instruction for the chef"';
