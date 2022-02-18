import 'package:exam/core/components/boxdecoration/boxdecoration.dart';
import 'package:exam/core/components/sizeconfig/size_config.dart';
import 'package:exam/core/constants/colors.dart';
import 'package:exam/core/constants/fonts.dart';
import 'package:exam/widgets/foodwidgets/food_list_horz.dart';
import 'package:exam/widgets/textwidget/text_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? _scoreValue;

  final List<DropdownMenuItem<int>> _dropDowns = [
    DropdownMenuItem<int>(child: TextWidget.textWidget(text: "Andijan"), value: 1,),
    DropdownMenuItem<int>(child: TextWidget.textWidget(text: "Tashkent"), value: 2,),
    DropdownMenuItem<int>(child: TextWidget.textWidget(text: "Ferghana"), value: 3,),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Container(
              height: 100,
              margin: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: AllBorder.allBorder(ColorConst.kWhiteColor),
                    child: Icon(Icons.menu, color: ColorConst.kPrimaryColor,),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    width: 150,
                    height: 100,
                   child: DropdownButtonHideUnderline(
                      child: DropdownButton<int>(
                        items: _dropDowns,
                        value: _scoreValue,
                        // hint: const Text("Bahoni tanlang"),
                        hint: TextWidget.textWidget(text: "Current state", size: FontSizeConst.kLargeFont),
                        onChanged: (value) {
                          setState(() {
                            _scoreValue = value;
                          });
                        },
                      ),
                    ),
                    // color: Colors.blue,
                  )

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              height: getHeight(41.0),
              child: Row(
                children:[
                  SizedBox(width: 10,),
                  Icon(Icons.search),
                  SizedBox(width: 10,),
                  TextWidget.textWidget(text: "Searching here")
                ]
              ),
              decoration: AllBorder.allBorder(ColorConst.kGreyColor.withOpacity(0.3)),
            ),
            SizedBox(height: 20.0,),
            Stack(
              children:[
                Container(
                  margin: EdgeInsets.only(left: 14.5),
                  child: Image.asset('assets/images/mainpic.png', width: 365),
                ),
                Positioned(
                  bottom: 10,
                  left: 21,
                  child: Image.asset('assets/images/blur.png', width: 353),
                
                ),
                Positioned(
                  bottom: 15,
                  left: 41,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget.textWidget(text: "Chinese food", color: ColorConst.kWhiteColor),
                        TextWidget.textWidget(text: "12 restaurants", color: ColorConst.kWhiteColor, size: FontSizeConst.kSmallFont),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  right: 40,
                  child: Container(
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        CircleAvatar(
                          radius: 5.0,
                          backgroundColor: ColorConst.kPrimaryColor,
                        ),
                        CircleAvatar(
                          radius: 5.0,
                          backgroundColor: ColorConst.kWhiteColor,
                        ),
                        CircleAvatar(
                          radius: 5.0,
                          backgroundColor: ColorConst.kWhiteColor,
                        ),
                        CircleAvatar(
                          radius: 5.0,
                          backgroundColor: ColorConst.kWhiteColor,
                        ),
                      ],
                    ),
                  )
                
                )
              ]
            ),
            _viewAll("Promotions"),
            FoodWidget(),
            _viewAll("Features"),


          ],
        ),
      ),
    );
  }

  Container _viewAll(String text) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 15.0, top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                TextWidget.textWidget(text: text, size: FontSizeConst.kLargeFont, fontWeight: FontWeightConst.kBold),
                Container(
                  child: Row(
                    children: [
                      TextWidget.textWidget(text: "View All"),
                      Icon(Icons.chevron_right_outlined),
                    ],
                  ),
                )
              ]
            )
          );
  }
}