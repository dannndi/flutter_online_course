class Instructor {
  final String image;
  final String name;
  final String role;

  Instructor({
    required this.image,
    required this.name,
    required this.role,
  });
}

final instructors = [
  Instructor(image: "assets/adam.jpeg", name: "Adam", role: "Mobile Dev"),
  Instructor(image: "assets/angela.jpeg", name: "Angela", role: "Analytic"),
  Instructor(image: "assets/tausha.jpeg", name: "Tausha", role: "DevOps"),
];
