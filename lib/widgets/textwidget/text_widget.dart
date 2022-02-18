import 'package:exam/core/constants/colors.dart';
import 'package:exam/core/constants/fonts.dart';
import 'package:flutter/material.dart';

class TextWidget{
  static textWidget({required String text, Color color = Colors.black, FontWeight fontWeight = FontWeightConst.kNormal, double size = FontSizeConst.kMediumFont}){
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight, ),
    );
  }
}