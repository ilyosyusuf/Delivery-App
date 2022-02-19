import 'package:flutter/material.dart';

class FoodListModel{
  String foodname;
  String type;
  String reviews;
  String image;
  String rate;
  Color color;
  Color color2;
  List cost;
  FoodListModel(this.foodname, this.type, this.reviews, this.image, this.rate, this.color, this.color2, this.cost);
}