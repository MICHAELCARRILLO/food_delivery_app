class Dish {
  String name;
  String store;
  int proximity;
  String image;
  double stars;
  int price;

  Dish({
    required this.name,
    required this.store,
    required this.proximity,
    required this.image,
    required this.stars,
    required this.price,
  });
}

List<Dish> listOfDishes() {
  return [
    Dish(
        name: "Fried Chiness Rice",
        store: "Chiness Su'Cafe",
        proximity: 30,
        image: "dish1.png",
        stars: 4.6,
        price: 25),
    Dish(
        name: "Fried Chiness Rice",
        store: "Chiness Su'Cafe",
        proximity: 30,
        image: "dish2.png",
        stars: 4.6,
        price: 25),
    Dish(
        name: "Fried Chiness Rice",
        store: "Chiness Su'Cafe",
        proximity: 30,
        image: "dish3.png",
        stars: 4.6,
        price: 25),
    Dish(
        name: "Fried Chiness Rice",
        store: "Chiness Su'Cafe",
        proximity: 30,
        image: "dish4.png",
        stars: 4.6,
        price: 25),
  ];
}
