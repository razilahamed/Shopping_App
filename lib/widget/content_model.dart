class UnboardingContent {
  String image;
  String title;
  String description;

  UnboardingContent({
    required this.description,
    required this.image,
    required this.title,
  });
}

List<UnboardingContent> contents = [
  UnboardingContent(
    description: "Let's start with our tasty food",
    image: "images/screen1.png",
    title: "Select your item\n from menu",
  ),
  UnboardingContent(
    title: "We have everything you need",
    description: "Let's start with\n card payment",
    image: "images/screen2.png",
  ),
  UnboardingContent(
    title: "We have everything you need",
    description: "Let's start with our tasty food",
    image: "images/screen3.png",
  ),
];
