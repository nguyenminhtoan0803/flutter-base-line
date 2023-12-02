// ignore: file_names
import 'package:flutter/material.dart';

class Product {
  late Color color;
  late String title;
  late String image;
  late String price;
  late String tag;
  late String description;
  late String size;
  late int count;
  late String info;

  Product(
      {required this.color,
      required this.title,
      required this.image,
      required this.price,
      required this.tag,
      required this.description,
      required this.size,
      required this.count,
      required this.info});
}
