import 'package:exam/core/components/sizeconfig/size_config.dart';
import 'package:exam/core/constants/colors.dart';
import 'package:exam/core/data/user_data.dart';
import 'package:exam/models/authormodel/author.dart';
import 'package:exam/screens/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isShow = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.all(23),
      decoration: BoxDecoration(color: ColorConst.kWhiteColor, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ]),
      // color: ColorConst.kWhiteColor,
      child: Container(
        width: getWidth(334),
        height: getHeight(333),
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      contentPadding: EdgeInsets.all(10.0),
                      hintText: "First name",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Please, Fill the line";
                      }
                      if (value.length < 6) {
                        return "Enter letters more than 6";
                      }
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      contentPadding: EdgeInsets.all(10.0),
                      hintText: "Email",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                      validator:(value) {
                        if(value!.isEmpty){
                          return "Please, Fill the line";
                        } else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                            return "Enter Email!";
                          }
                      },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    obscureText: _isShow,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      contentPadding: EdgeInsets.all(10.0),
                      hintText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {
                          setState(() {
                            _isShow = !_isShow;
                          });
                        },
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please, Fill the line";
                      }else if(value.length < 7){
                        return "Enter password code more than 7";
                      }
                    },
                  ),
                  SizedBox(height: 20.0),

                  Container(
                    width: 80,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(radius: 5.0,
                          backgroundColor: ColorConst.kPrimaryColor,
                          child: CircleAvatar(radius: 4.0,
                          backgroundColor: ColorConst.kWhiteColor,),
                        ),
                        CircleAvatar(radius: 5.0,
                          backgroundColor: ColorConst.kPrimaryColor,
                        ),
                        CircleAvatar(radius: 5.0,
                          backgroundColor: ColorConst.kPrimaryColor,
                          child: CircleAvatar(radius: 4.0,
                          backgroundColor: ColorConst.kWhiteColor,),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   child: 
                  // ),

                  Stack(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: ColorConst.kPrimaryColor,
                          elevation: 0,
                          fixedSize: Size(350, 40),
                        ),
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: ColorConst.kWhiteColor, fontSize: 16.0),
                        ),
                        onPressed: _onPressed,
                      ),
                      Positioned(
                          right: 10,
                          top: 18,
                          child: SvgPicture.asset('assets/icons/arrow.svg'))
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }

  _onPressed() {
    String name = _nameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    if (_formKey.currentState!.validate()) {
      for (User user in UserData.UserList) {
        if (name == user.name && password == user.password) {
          Navigator.push(
              context, MaterialPageRoute(builder: (ctx) => MyHomePage()));
          return true;
        }
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          dismissDirection: DismissDirection.horizontal,
          backgroundColor: Colors.redAccent,
          content: Text("wrong input, please enter correctly or Sign up first"),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }
}
