import 'package:exam/core/components/boxdecoration/boxdecoration.dart';
import 'package:exam/core/components/sizeconfig/size_config.dart';
import 'package:exam/core/constants/colors.dart';
import 'package:exam/core/constants/fonts.dart';
import 'package:exam/core/data/food_data.dart';
import 'package:exam/core/data/user_data.dart';
import 'package:exam/models/authormodel/food_model.dart';
import 'package:exam/widgets/textwidget/text_widget.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final FoodModel food;
  const DetailsPage({ Key? key, required this.food}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
    num sum = 0;
    int index_sum = 0;
    List _foodSize = ['Small', 'Medium', 'Large'];
    List _foodCount = [0,0,0];
    List _foodSum = [0,0,0];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: TextWidget.textWidget(text: widget.food.foodname),
        
      // ),
      body: ListView(
        children: [
          Container(
            child: Image.asset(widget.food.image),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.star, color: ColorConst.kPrimaryColor,),
                      SizedBox(width: 5.0,),
                      TextWidget.textWidget(text: widget.food.rate, size: FontSizeConst.kLargeFont),
                      SizedBox(width: 10.0,),
                      TextWidget.textWidget(text: widget.food.reviews),
                    ],
                  ),
                  
                ),
                OutlinedButton(
                  child: TextWidget.textWidget(text: "Share", size: FontSizeConst.kSmallFont),
                  style: OutlinedButton.styleFrom(fixedSize: Size(47, 22)),
                  onPressed: (){},
                ),


              ],
            ),
          ),
          _sizesCont(text1: "Sizes", text2: "Price"),

          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: widget.food.cost.length,
              itemBuilder: (ctx, i){
                
                return Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        child: TextWidget.textWidget(text: "${_foodSize[i]}"),
                      ),
                      Container(
                        width: 40,
                        child: TextWidget.textWidget(text: "\$${_foodSum[i]}"),

                      ),
                      Container(
                        child: Row(
                          children: [
                            InkWell(
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                child: Text("-"),
                                decoration: AllBorderWhithoutShadow.allBorder(ColorConst.kGreyColor)

                                
                              ),
                              onTap: () {
                                setState(() {
                                  if(_foodCount[i]>0){
                                    _foodCount[i]-=1;
                                    _foodSum[i] -= widget.food.cost[i];
                                  }
                                });
                              },
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              child: Text("${_foodCount[i]}"),
                              decoration: AllBorderWhithoutShadow.allBorder(ColorConst.kPrimaryColor)
                            ),
                            InkWell(
                              child: Container(
                              alignment: Alignment.center,
                                width: 30,
                                height: 30,
                              child: Text("+"),
                                decoration: AllBorderWhithoutShadow.allBorder(ColorConst.kGreyColor)

                              ),
                              onTap: () {
                                setState(() {
                                  if(_foodCount[i]<10){
                                    _foodCount[i]+=1;
                                    _foodSum[i] += widget.food.cost[i];
                                    print("$sum");
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        child: Container(
                          width: 80,
                          height: 30,
                          alignment: Alignment.center,
                          child: TextWidget.textWidget(text: "Add to Cart", size: FontSizeConst.kSmallFont),
                          decoration: AllBorderWhithoutShadow.allBorder(ColorConst.kGreyColor),
                        ),
                        onTap: (){},
                      )
                    ],
                  ),

                );
                
              }
            ),
          )
        ],
      ),
    );
  }

  Container _sizesCont({String? text1, String? text2}) {
    return Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget.textWidget(text: text1.toString(), size: FontSizeConst.kLargeFont, fontWeight: FontWeightConst.kBold),
              TextWidget.textWidget(text: text2.toString(), size: FontSizeConst.kLargeFont, fontWeight: FontWeightConst.kBold)
            ],
          ),
        );
  }
}