import 'package:exam/core/constants/colors.dart';
import 'package:exam/core/constants/fonts.dart';
import 'package:exam/core/data/food_list_data.dart';
import 'package:exam/models/authormodel/food_model.dart';
import 'package:exam/models/foodmodel/food_list_model.dart';
import 'package:exam/screens/details/detail.dart';
import 'package:exam/widgets/textwidget/text_widget.dart';
import 'package:flutter/material.dart';

class FoodListWidget extends StatefulWidget {
  const FoodListWidget({Key? key}) : super(key: key);

  @override
  _FoodListWidgetState createState() => _FoodListWidgetState();
}

class _FoodListWidgetState extends State<FoodListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1000,
        margin: EdgeInsets.only(top: 20.0),
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: FoodListData.FoodList.length,
            itemBuilder: (ctx, i) {
              FoodModel foodlist = FoodListData.FoodList[i];
              return InkWell(
                child: Container(
                  height: 100,
                  margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(foodlist.image),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextWidget.textWidget(
                                  text: foodlist.foodname,
                                  size: FontSizeConst.kMediumFont,
                                  fontWeight: FontWeightConst.kBold, color: foodlist.color),
                              TextWidget.textWidget(
                                  text: foodlist.type,
                                  size: FontSizeConst.kSmallFont,
                                  color: ColorConst.kGreyColor),
                              // TextWidget.textWidget(text: foodlist.type, size: FontSizeConst.kSmallFont),
                              Container(
                                // padding: EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: ColorConst.kAmberForList,
                                      size: 20.0,
                                    ),
                                    TextWidget.textWidget(
                                        text: foodlist.rate,
                                        size: FontSizeConst.kMediumFont,
                                        color: ColorConst.kGreyColor),
                                    Text(" "),
                                    TextWidget.textWidget(
                                        text: foodlist.reviews,
                                        size: FontSizeConst.kSmallFont,
                                        color: ColorConst.kGreyColor),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: foodlist.color2,
                          child: Icon(
                            Icons.favorite,
                            size: 15,
                            color: ColorConst.kWhiteColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DetailsPage(food: FoodListData.FoodList[i])));
                },
              );
            }));
  }
}
