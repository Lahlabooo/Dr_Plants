
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class CategoryModel {
  final IconData img;

  final String title;

  final Color color;

  final void Function() onTap;

  CategoryModel(
      {required this.img, required this.title, required this.color, required this.onTap});

  factory CategoryModel.fromJson (json){
    return CategoryModel(
      img:  json["Img"],
      title:  json["Title"],
      color: json['Color'],
      onTap: json['OnTap'],
    );
  }


  static final List<Map<String, dynamic>> _categoryDataMap = [
    {
      "Img": FontAwesomeIcons.pepperHot,
      "Title": 'Vegetables',
      'Color': Colors.lightGreen,
      'OnTap': () {}
    },
    {
      "Img": FontAwesomeIcons.seedling,
      "Title": "Flowers",
      'Color': Colors.redAccent,
      'OnTap': () {}
    },
    {
      "Img": FontAwesomeIcons.canadianMapleLeaf,
      "Title": "Herbs",
      'Color': Colors.orangeAccent,
      'OnTap': () {}
    },
    {
      "Img": FontAwesomeIcons.spa,
      "Title": "cactus",
      'Color': Colors.purpleAccent,
      'OnTap': () {}
    }

  ];

  static List<CategoryModel> categoryData() {
    List<CategoryModel> data = [];

    for (var item in _categoryDataMap) {
      data.add(CategoryModel.fromJson(item));
    }
    return data;
  }
}