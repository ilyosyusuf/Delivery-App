import 'package:exam/core/constants/colors.dart';
import 'package:exam/models/authormodel/author.dart';
import 'package:exam/models/authormodel/food_model.dart';
import 'package:flutter/material.dart';

class UserData{
  static List<User> UserList = [
    User(1, "John", "j@gmail.com","123456"),
    User(2, "Lara", "l@gmail.com","654321"),
  ];
}

class FoodData{
  static List<FoodModel> FoodList = [
    FoodModel("Flatt 50% off", "Pizzeria restaurant", "Chinese & Italian", "(based on 100 reviews)", "assets/images/pizza.png", "4.5", Colors.pink),
    FoodModel("Up to 70% off", "Burger mania", "Pizzas & Burgers", "(based on 70 reviews)","assets/images/burgers.png","4.6", ColorConst.kPrimaryColor),
    FoodModel("Flatt 30% off", "Lavash", "Pizzas", "(based on 650 reviews)", "assets/images/listview_3.png", "4.7", Colors.green),
  ];
}