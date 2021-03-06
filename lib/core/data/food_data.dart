import 'package:exam/core/constants/colors.dart';
import 'package:exam/models/authormodel/food_model.dart';
import 'package:flutter/material.dart';

class FoodData{
  static List<FoodModel> FoodList = [
    FoodModel("Flatt 50% off", "Pizzeria restaurant", "Chinese & Italian", "(based on 100 reviews)", "assets/images/pizza.png", "4.5", ColorConst.kPinkForList,ColorConst.kBlack, [15, 20,25]),
    FoodModel("Up to 70% off", "Burger mania", "Pizzas & Burgers", "(based on 70 reviews)","assets/images/burgers.png","4.6", ColorConst.kAmberForList, ColorConst.kBlack,[20, 25,30]),
    FoodModel("Flatt 30% off", "Lavash", "Pizzas", "(based on 650 reviews)", "assets/images/listview_3.png", "4.7", ColorConst.kGreenForList, ColorConst.kBlack,[25, 30,35]),
  ];
}