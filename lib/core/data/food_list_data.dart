import 'package:exam/core/constants/colors.dart';
import 'package:exam/models/authormodel/food_model.dart';
import 'package:exam/models/foodmodel/food_list_model.dart';

class FoodListData{
  static List<FoodModel> FoodList = [
    FoodModel("", "Chinese Restaurant", "Restaurant Chinese Food | \$\$", "(based on 100 reviews)", "assets/images/list1.png", "4.5", ColorConst.kBlack, ColorConst.kPinkForList, [15, 20,25]),
    FoodModel("","Burger Mania", "Burgers & Fries | \$\$\$", "(based on 70 reviews)","assets/images/list2.png","4.2", ColorConst.kBlack, ColorConst.kPinkForList, [20, 25,30]),
    FoodModel("","Cheesy Salad Makers", "Chinese Food | \$\$", "(based on 10 reviews)", "assets/images/list3.png", "4.7", ColorConst.kBlack, ColorConst.kGreyColor,[25, 30,35]),
    FoodModel("","Macaroni Corner", "Italian & Russian Foods | \$\$\$", "(based on 89 reviews)", "assets/images/list4.png", "4.0", ColorConst.kBlack, ColorConst.kGreyColor,[30,35, 40]),
    FoodModel("","Special Soup", "Soups & Brouths | \$\$", "(based on 105 reviews)", "assets/images/list5.png", "3.9", ColorConst.kBlack, ColorConst.kPinkForList,[35, 40, 45]),
    FoodModel("","Ice Cream Parlor", "Ice Creams & Shakes | \$\$", "(based on 200 reviews)", "assets/images/list6.png", "4.1", ColorConst.kBlack, ColorConst.kPinkForList,[25, 30,35]),
    FoodModel("","Buy 1 get free", "Pizzeria Restaurant", "(based on 130 reviews)", "assets/images/list7.png", "4.5", ColorConst.kPrimaryColor, ColorConst.kPinkForList,[25, 30,35]),
    FoodModel("","Buy 1 burger get free fries", "Burger Mania", "(based on 70 reviews)", "assets/images/list8.png", "4.6", ColorConst.kPrimaryColor, ColorConst.kPinkForList,[25, 30,35]),
    FoodModel("","Discount on Chinese", "Chinese In Restaurant", "(based on 60 reviews)", "assets/images/list5.png", "4.3", ColorConst.kPrimaryColor, ColorConst.kPinkForList,[25, 30,35]),
  ];
}