import 'package:exam/core/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomNavigation{
   final kBottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.home,color: ColorConst.kPrimaryColor,), label: ""),
      const BottomNavigationBarItem(icon: Icon(Icons.wifi_rounded, color: ColorConst.kGreyColor,), label: ""),
      const BottomNavigationBarItem(icon: Icon(Icons.message_rounded, color: ColorConst.kGreyColor,),label: ""),
      const BottomNavigationBarItem(icon: Icon(Icons.favorite_outline, color: ColorConst.kGreyColor,),label: ""),
      const BottomNavigationBarItem(icon: Icon(Icons.person, color: ColorConst.kGreyColor,),label: ""),
    ];

   bottomNavigation(BuildContext context){
    return BottomNavigationBar(items: kBottomNavBarItems);
  }
}