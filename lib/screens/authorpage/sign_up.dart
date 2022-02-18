import 'package:exam/core/components/boxdecoration/boxdecoration.dart';
import 'package:exam/core/constants/colors.dart';
import 'package:exam/screens/authorpage/sign_in.dart';
import 'package:exam/widgets/authorwidgets/sign_up_widget.dart';
import 'package:flutter/material.dart';

class SignUppage extends StatefulWidget {
  const SignUppage({ Key? key }) : super(key: key);

  @override
  _SignUppageState createState() => _SignUppageState();
}

class _SignUppageState extends State<SignUppage> {
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
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 450,
                decoration: BottomBorder.bottomBorder(ColorConst.kPrimaryColor),
              )
            
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: UpBorder.upBorder(ColorConst.kPrimaryColor),
                child: TextButton(
                  child: Text("Already have an account? Log in", style: TextStyle(color: ColorConst.kWhiteColor),),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=> SignInPage()));
                  },
                ),
              ),
            ),
            Positioned(
              top: 180,
                child: SignUpWidget(),
            ),
            Positioned(
              top: 10,
              left: 23,
              child: Container(
                width: 40,
                height: 40,
                decoration: AllBorder.allBorder(ColorConst.kWhiteColor.withOpacity(0.1)),
                // height: 50,
                child: Icon(Icons.arrow_back, color: ColorConst.kWhiteColor,)
              ),
            
            ),
            Positioned(
              top: 100,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: 21,
                      height: 40,
                      color: ColorConst.kWhiteColor,
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 10.0),
                      height: 40,
                      child: Text("REGISTER", style: TextStyle(fontSize: 30, color: ColorConst.kWhiteColor),),
                    )
                  ],
                )
              )
            
            )
          ],
        ),
      )
    );
  }
}