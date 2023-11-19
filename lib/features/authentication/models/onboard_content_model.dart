class UnboardingContent {
  String image;
  String title;
  String discription;
  UnboardingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnboardingContent> contents = [
  UnboardingContent(
    title: 'Welcome to Flavorful Discoveries',
    image: 'assets/images/onboard/Recipe book-pana.svg',
    discription:
        "Explore a world of culinary delights at your fingertips. Find mouthwatering recipes that cater to your cravings and bring the joy of cooking into your home.",
  ),
  UnboardingContent(
    title: 'Discover Delicious Recipes',
    image: 'assets/images/onboard/Recipe book-rafiki.svg',
    discription:
        "Explore a world of mouthwatering recipes curated just for you. From quick and easy meals to gourmet delights, find the perfect recipe to satisfy your cravings.",
  ),
  UnboardingContent(
    title: "Unleash Your Inner Chef",
    image: 'assets/images/onboard/Chef-bro.svg',
    discription:
        "Ignite your passion for cooking! Our app provides easy-to-follow recipes, cooking tips, and a variety of cuisines. Turn your everyday meals into extraordinary dining experiences.",
  ),
];
