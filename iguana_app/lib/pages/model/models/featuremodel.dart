class Feature {
  int id;
  late String foodName;
  late String price;
  late String image;

  Feature(
      {this.id = 0,
      required this.foodName,
      required this.price,
      required this.image});
}

List<Feature> foodfeature = [
  Feature(
      foodName: 'Chicken Kofta',
      image: "assets/images/periperi_cat.png",
      price: '3.99'),
  Feature(
      foodName: 'Double Beef Pizza',
      image: "assets/images/mushroom_pizza.png",
      price: '3.99'),
];
