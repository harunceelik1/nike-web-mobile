import 'package:flutter/material.dart';

class Shoes {
  String title;
  String model;
  String image;
  String image2;
  String image3;
  String price;
  String description;

  Shoes(this.title, this.model, this.image, this.image2, this.image3,
      this.price, this.description);
}

class ListModel {
  static final List<Shoes> items = [
    Shoes(
      'Nike Winflo 9 ',
      "Men's road running shoes",
      "images/background_nike.png",
      "images/dollar-symbol.png",
      "images/shoes.png",
      '175',
      'Camp',
    ),
    Shoes(
      'Nike Winflo ',
      "Men's road running shoes",
      "images/background_nike.png",
      "images/dollar-symbol.png",
      "images/shoes1.webp",
      '145',
      'Camp',
    ),
    Shoes(
      'Nike Winflo 9 ',
      "Men's road running shoes",
      "images/background_nike.png",
      "images/dollar-symbol.png",
      "images/shoes.png",
      '175',
      'Camp',
    ),
  ];
}
