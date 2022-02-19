import 'package:exam/core/constants/colors.dart';
import 'package:exam/models/authormodel/food_model.dart';

class FeaturedFoodData{
  static List<FoodModel> FeaturedFoodList = [
    FoodModel("Flatt 30% off", "Chinese Specializes", "Chinese food specializes", "(based on 10 reviews)", "assets/images/features1.png", "4.0", ColorConst.kPinkForList, ColorConst.kBlack, [15, 20,25]),
    FoodModel("Up to 12% off", "The Italian Restaurant", "Italian foods", "(based on 100 reviews)","assets/images/feature2.png","4.2", ColorConst.kAmberForList,ColorConst.kBlack, [20, 25,30]),
    FoodModel("Flatt 30% off", "American Fast Food", "Fast foods", "(based on 340 reviews)", "assets/images/features3.png", "4.7", ColorConst.kGreenForList, ColorConst.kBlack, [25, 30,35]),
  ];
}