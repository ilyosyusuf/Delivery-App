import 'package:exam/core/components/boxdecoration/boxdecoration.dart';
import 'package:exam/core/components/sizeconfig/size_config.dart';
import 'package:exam/core/constants/colors.dart';
import 'package:exam/core/constants/fonts.dart';
import 'package:exam/core/data/food_data.dart';
import 'package:exam/models/authormodel/food_model.dart';
import 'package:exam/screens/details/detail.dart';
import 'package:exam/widgets/textwidget/text_widget.dart';
import 'package:flutter/material.dart';

class FoodWidget extends StatefulWidget {
  const FoodWidget({Key? key}) : super(key: key);

  @override
  _FoodWidgetState createState() => _FoodWidgetState();
}

class _FoodWidgetState extends State<FoodWidget> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: getHeight(280),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: FoodData.FoodList.length,
          itemBuilder: (ctx, i) {
            FoodModel foods = FoodData.FoodList[i];
            return InkWell(
              child: Container(
                  width: getWidth(220),
                  height: getHeight(250),
                  // color: Colors.amber,
                  margin: EdgeInsets.all(20.0),
                  decoration: AllBorder.allBorder(ColorConst.kWhiteColor),
                  child: Column(children: [
                    Container(
                        height: 30,
                        width: MediaQuery.of(context).size.height,
                        alignment: Alignment.center,
                        child: TextWidget.textWidget(text: foods.off),
                        decoration: UpBorderList.bottomBorder(foods.color)),
                    Container(
                      // width: getWidth(100),
                      width: MediaQuery.of(context).size.width,
                      height: getHeight(130),
                      // color: Colors.red,
                      child: Image.asset(foods.image, fit: BoxFit.cover),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.only(left: 10.0),
                        child: TextWidget.textWidget(
                            text: foods.foodname,
                            fontWeight: FontWeightConst.kBold)),
                    Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10.0),
                        child: TextWidget.textWidget(
                            text: foods.type, color: ColorConst.kGreyColor)),
                    Container(
                      padding: EdgeInsets.only(left: 10.0, top: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: ColorConst.kAmberForList),
                          TextWidget.textWidget(
                              text: foods.rate,
                              size: FontSizeConst.kMediumFont),
                          Text(" "),
                          TextWidget.textWidget(
                              text: foods.reviews,
                              size: FontSizeConst.kSmallFont),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: ColorConst.kPinkForList,
                              child: Icon(
                                Icons.favorite,
                                size: 15,
                                color: ColorConst.kWhiteColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ])),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => DetailsPage(
                              food: FoodData.FoodList[i],
                            )));
              },
            );
          }),
    );
  }
}
