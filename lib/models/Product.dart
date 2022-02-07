import 'package:flutter/material.dart';


class Product{
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.color,
    required this.price,
    required this.title,
    required this.description,
    required this.size,
    required this.image,
  });
}

String dummyText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
    "Duis tincidunt tincidunt leo, non maximus enim tincidunt non. "
    "In congue sit amet diam et aliquet. "
    "Vivamus maximus massa eget sagittis cursus. "
    "Vivamus iaculis ipsum et ligula congue feugiat sit amet vitae elit. ";

List<Product> products = [
  Product(
    id: 1,
    title: "Office Code",
    price: 235,
    size: 12,
    description: dummyText,
    image: "assets/images/img1.png",
    color: Color(0xFF3D82AE),
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 235,
    size: 12,
    description: dummyText,
    image: "assets/images/img2.png",
    color: Color(0xFFD3A984),
  ),
  Product(
    id: 3,
    title: "Old Fashion",
    price: 235,
    size: 12,
    description: dummyText,
    image: "assets/images/img3.png",
    color: Color(0xFF989493),
  ),
  Product(
    id: 4,
    title: "Belt Bag",
    price: 235,
    size: 12,
    description: dummyText,
    image: "assets/images/img4.png",
    color: Color(0xFFE6B398),
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 235,
    size: 12,
    description: dummyText,
    image: "assets/images/img5.png",
    color: Color(0xFFFB7883),
  ),
  Product(
    id: 6,
    title: "Old Fashion",
    price: 235,
    size: 12,
    description: dummyText,
    image: "assets/images/img6.png",
    color: Color(0xFFAEAEAE),
  ),
];

