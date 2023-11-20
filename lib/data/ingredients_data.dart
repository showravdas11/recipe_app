class Ingredients {
  int id;
  String name;
  String image;


  Ingredients({
    required this.id,
    required this.name,
    required this.image,

  });
}

final List<Ingredients> recipe = [
  Ingredients(
      id: 1,
      image: "https://i.ibb.co/93r3h0d/kos9av1699014767.jpg",
      name: "Lamb Pilaf (Plov)",
    ),
];
