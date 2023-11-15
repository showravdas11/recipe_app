class UnboardingContent {
  String image;
  String title;
  String discription;
  UnboardingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnboardingContent> contents = [
  UnboardingContent(
    title: 'Delicious Food',
    image: 'assets/images/onboard/Recipe book-pana.svg',
    discription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  UnboardingContent(
    title: 'Healthy & Tasty',
    image: 'assets/images/onboard/Recipe book-rafiki.svg',
    discription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  UnboardingContent(
    title: "let's Cook...",
    image: 'assets/images/onboard/Chef-bro.svg',
    discription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
];