import 'package:flutter/material.dart';

class Product {
  const Product({
    required this.name,
    required this.price,
    required this.desc,
    required this.color,
    required this.brand,
    required this.imgPath,
  });

  final String name;
  final double price;
  final String desc;
  final Color color;
  final String brand;
  final String imgPath;
}
