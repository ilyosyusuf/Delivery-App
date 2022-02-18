import 'package:exam/core/components/boxdecoration/boxdecoration.dart';
import 'package:exam/core/components/sizeconfig/size_config.dart';
import 'package:exam/core/constants/colors.dart';
import 'package:exam/screens/authorpage/sign_up.dart';
import 'package:exam/widgets/authorwidgets/sign_in_widget.dart';
import 'package:exam/widgets/authorwidgets/sign_up_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({ Key? key }) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              color: ColorConst.kWhiteColor,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                
                decoration: UpBorder.upBorder(ColorConst.kPrimaryColor),
              )
            
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: UpBorder.upBorder(ColorConst.kWhiteColor),
                child: TextButton(
                  child: Text("Create new account", style: TextStyle(color: Colors.black),),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=> SignUppage()));
                  },
                ),
              ),
            ),
            Positioned(
              top: 180,
                child: SignInWidget(),
            ),
            Positioned(
              top: 10,
              left: 23,
              child: Container(
                width: 40,
                height: 40,
                decoration: AllBorder.allBorder(ColorConst.kWhiteColor),
                // height: 50,
                child: Icon(Icons.arrow_back, color: ColorConst.kPrimaryColor,)
              )
            
            ),
            Positioned(
              top: 100,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: 21,
                      height: 40,
                      color: ColorConst.kPrimaryColor,
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 10.0),
                      height: 40,
                      child: Text("SIGN IN", style: TextStyle(fontSize: 30, color: ColorConst.kPrimaryColor),),
                    )
                  ],
                )
              )
            
            ),
            // Positioned(
            //   child: Container(
            //     child: Column(
            //       children: [
            //         Text("Or"),
            //         Container(
            //           width: 200,
            //           child: Row(
            //             children: [
            //               InkWell(
            //                 child: Container(
            //                   width: 50,
            //                   height: 50,
            //                   child: Image.asset()
            //                 ),
            //               )
            //             ],
            //           )
            //         )
            //       ],
            //     ),
            //   )
            
            // )
          ],
        ),
      )
    );
  }
}