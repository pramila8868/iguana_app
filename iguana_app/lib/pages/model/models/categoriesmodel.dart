class Categories {
  int id;
  late String foodName;
  late String image;

  Categories({
    this.id = 0,
    required this.foodName,
    required this.image,
  });
}

// ignore: empty_constructor_bodies
List<Categories> foodcategory = [
  Categories(
      id: 0, foodName: "Burger", image: "assets/images/chicken_burger.png"),
  Categories(
      id: 0, foodName: "Pizza", image: 'assets/images/mushroom_pizza.png'),
  Categories(
      id: 0, foodName: "Momo", image: "assets/images/mushroom_pizza.png"),
  Categories(
      id: 0, foodName: "Tacos", image: 'assets/images/chicken_burger.png'),
  Categories(
      id: 0, foodName: "Pizza", image: "assets/images/mushroom_pizza.png"),
  Categories(
      id: 0, foodName: "Momo", image: 'assets/images/mushroom_pizza.png'),
  Categories(
      id: 0, foodName: "Burger", image: "assets/images/chicken_burger.png"),
  Categories(
      id: 0, foodName: "Pizza", image: 'assets/images/mushroom_pizza.png'),
  Categories(id: 0, foodName: "Momo", image: 'assets/images/mushroom_pizza.png')
];
