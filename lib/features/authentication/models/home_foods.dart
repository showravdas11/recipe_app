class Food {
  String name;
  String image;
  double cal;
  double time;
  double rate;
  int reviews;

  Food({
    required this.name,
    required this.image,
    required this.cal,
    required this.time,
    required this.rate,
    required this.reviews,
  });
}

final List<Food> foods = [
  Food(
    name: "Beaf Steak",
    image: "assets/images/beaf-steak.jpg",
    cal: 150,
    time: 15,
    rate: 4.4,
    reviews: 23,
  ),
  Food(
    name: "Butter Chicken",
    image: "assets/images/butter-chicken.jpg",
    cal: 150,
    time: 15,
    rate: 4.4,
    reviews: 23,
  ),
  Food(
    name: "Dumplings",
    image: "assets/images/dumplings.jpg",
    cal: 150,
    time: 15,
    rate: 4.4,
    reviews: 23,
  ),
  Food(
    name: "Ramen Noodles",
    image: "assets/images/ramen-noodles.jpg",
    cal: 150,
    time: 15,
    rate: 4.4,
    reviews: 23,
  ),
  Food(
    name: "Mexican Pizza",
    image: "assets/images/mexican-pizza.jpg",
    cal: 150,
    time: 15,
    rate: 4.4,
    reviews: 23,
  ),
];
