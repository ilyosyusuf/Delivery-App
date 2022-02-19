import 'dart:async';

import 'package:exam/core/constants/fonts.dart';
import 'package:exam/screens/authorpage/sign_in.dart';
import 'package:exam/widgets/textwidget/text_widget.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>SignInPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child:
            Image.asset('assets/images/splashimage.png', fit: BoxFit.cover,),
          ),
          Positioned(
            top: 450,
            left: 90,
            child: Container(
              child: Row(
                children:[
                  TextWidget.textWidget(text: "Food Ease", size: FontSizeConst.kLargeFont, fontWeight: FontWeightConst.kBold),
                  Text("  "),
                  TextWidget.textWidget(text: "Delivery App", size: FontSizeConst.kLargeFont, fontWeight: FontWeightConst.kNormal),
                ]
              ),
            )
          
          )
        ],
      ),
    );
  }
}