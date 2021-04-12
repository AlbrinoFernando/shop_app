import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular, isGaming, isOffice, isBudget;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    this.isGaming = false,
    this.isOffice = false,
    this.isBudget = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
      id: 1,
      images: [
        "assets/images/HighEndGamingSetup.png",
        "assets/images/MidTowerCase.jpg",
        "assets/images/AMDProcessor.jpg",
        "assets/images/CrossheroMotherboard.jpg",
        "assets/images/SamsungSSD.jpg",
        "assets/images/TridentZ_Neo.jpg",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Gaming Computer Setup",
      price: 4487.99,
      description: description,
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
      isGaming: true,
      isOffice: false,
      isBudget: false),
  Product(
      id: 3,
      images: [
        "assets/images/OfficeComputer.jpg",
        "assets/images/Dell.jpg",
        "assets/images/CDInput.jpg",
        "assets/images/Others.jpg",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Office Computer",
      price: 1299.99,
      description:
          "A standard Office setup that should be able to help you get all of your work done on time.",
      rating: 4.1,
      isFavourite: true,
      isPopular: true,
      isGaming: false,
      isOffice: true,
      isBudget: true),
  Product(
      id: 3,
      images: [
        "assets/images/OfficePC2.jpg",
        "assets/images/OfficePC2Dell.jpg",
        "assets/images/OfficePC2Others.jpg",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Refined Office PC",
      price: 2889.99,
      description:
      "A slightly advanced office PC setup that is sure to bring fortune to their user.",
      rating: 4.1,
      isFavourite: true,
      isPopular: true,
      isGaming: false,
      isOffice: true,
      isBudget: false),
];

const String description =
    "This setup is guaranteed to boost your gaming performance with amazing graphics...";
