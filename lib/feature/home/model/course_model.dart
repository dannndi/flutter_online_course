class CourseModel {
  final String image;
  final String name;
  final String instructorName;
  final String duration;
  final String rating;
  final String price;

  CourseModel({
    required this.image,
    required this.name,
    required this.instructorName,
    required this.duration,
    required this.rating,
    required this.price,
  });
}

final courses = [
  CourseModel(
    image: "assets/jetpack_compose.png",
    name: "Android Jetpack Compose Crach Course",
    instructorName: "Adam",
    duration: "24h 40m",
    rating: "4.5",
    price: "\$20.00",
  ),
  CourseModel(
    image: "assets/r_analyst.jpeg",
    name: "Data analist with R",
    instructorName: "Angela",
    duration: "17h 20m",
    rating: "4.7",
    price: "\$12.00",
  ),
  CourseModel(
    image: "assets/decoding_devops.jpeg",
    name: "Decoding DevOps with Project",
    instructorName: "Tausha",
    duration: "20h 44m",
    rating: "4.2",
    price: "\$15.00",
  ),
];
