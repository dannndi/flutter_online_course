class Category {
  final String image;
  final String name;

  Category({required this.image, required this.name});
}

final categories = [
  Category(image: "assets/code.png", name: "Programing"),
  Category(image: "assets/statistics.png", name: "Analytic"),
  Category(image: "assets/availability.png", name: "DevOps"),
  Category(image: "assets/data-management.png", name: "IT Support"),
];
