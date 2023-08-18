import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hackertoon_task/Screens/home_page.dart';
import 'package:hackertoon_task/Screens/sign_up_page.dart';
import 'package:hackertoon_task/Widgets/custom_button.dart';
import 'package:hackertoon_task/Widgets/custom_passwordtextformfield.dart';
import 'package:hackertoon_task/Widgets/custom_text.dart';
import 'package:hackertoon_task/Widgets/custom_textformfield.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  static String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static RegExp regExp = new RegExp(p);

  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  /* validation function start */
  void validation() {
    if (email.text.isEmpty && password.text.isEmpty) {
      Alert(
        context: context,
        title: "Alert",
        desc: "Both Field is Empty",
        buttons: [
          DialogButton(
            child: Text(
              "CANCEL",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            color: Color(0xff0D986A),
          )
        ],
      ).show();
    } else if (email.text.isEmpty) {
      Alert(
        context: context,
        title: "Alert",
        desc: "Email is Empty",
        buttons: [
          DialogButton(
            child: Text(
              "CANCEL",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            color: Color(0xff0D986A),
          )
        ],
      ).show();
    } else if (!regExp.hasMatch(email.text)) {
      Alert(
        context: context,
        title: "Alert",
        desc: "Email is Not Valid",
        buttons: [
          DialogButton(
            child: Text(
              "CANCEL",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            color: Color(0xff0D986A),
          )
        ],
      ).show();
    } else if (password.text.isEmpty) {
      Alert(
        context: context,
        title: "Alert",
        desc: "Password is Empty",
        buttons: [
          DialogButton(
            child: Text(
              "CANCEL",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            color: Color(0xff0D986A),
          )
        ],
      ).show();
    } else if (password.text.length < 8) {
      Alert(
        context: context,
        title: "Alert",
        desc: "Password is Too Short",
        buttons: [
          DialogButton(
            child: Text(
              "CANCEL",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            color: Color(0xff0D986A),
          )
        ],
      ).show();
    }
  }
  /* validation function end */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffold,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              /*first portion start here*/
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: Color(0xffF8F8F8),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff0D986A),
                        )),
                  ),
                ],
              ),

              /*first portion end here*/
              SizedBox(
                height: 20,
              ),
              /*second portion start here*/
              Row(
                children: [
                  Image.asset('assets/IconImg.png'),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(
                    title: 'Plantify',
                    clr: Color(0xff0D986A),
                    font: FontWeight.w700,
                    size: 22,
                  ),
                ],
              ),
              /*second portion end here*/
              SizedBox(
                height: 20,
              ),
              /*third portion start here*/
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomText(
                    title: 'Login',
                    clr: Color(0xff0D986A),
                    font: FontWeight.w700,
                    size: 36,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    title:
                        'Masukan NISN dan password untukmemulai\n belajar sekarang',
                    clr: Color(0xff0D986A),
                    font: FontWeight.w400,
                    size: 14,
                  ),
                ],
              ),

              /*third portion end here*/
              SizedBox(
                height: 20,
              ),
              /*forth portion start here*/

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomText(
                    title: 'Username/Email',
                    clr: Color(0xff8F92A1),
                    font: FontWeight.w500,
                    size: 12,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  /*Username/Email TextField start here*/
                  CustomTextFormField(
                    controller: email,
                    title: 'Username',
                    prefix_icon: Icons.looks,
                    obscureText: false,
                  ),
                  /*Username/Email TextField end here*/
                ],
              ),

              /*forth portion end here*/
              SizedBox(
                height: 20,
              ),
              /*fifth portion start here*/

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomText(
                    title: 'Password',
                    clr: Color(0xff8F92A1),
                    font: FontWeight.w500,
                    size: 12,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  /*Password TextField start here*/
                  CustomPasswordTextFormField(
                    controller: password,
                    title: "Password",
                    obscureText: true,
                    prefix_icon: Icons.looks,
                  ),
                  /*Password TextField end here*/
                ],
              ),

              /*fifth portion end here*/
              SizedBox(
                height: 5,
              ),
              /*sixth portion start here*/
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    title: 'Forget Password',
                    clr: Color(0xff0D986A),
                    font: FontWeight.w400,
                    size: 14,
                  ),
                ],
              ),
              /*sixth portion end here*/
              SizedBox(
                height: 10,
              ),
              /*seventh portion start here*/
              CustomButton(
                  name: 'SIGN IN',
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                    validation();
                  })),
              /*seventh portion end here*/
              SizedBox(
                height: 10,
              ),
              /*Last Portion start here*/
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t Have an account?',
                    style: TextStyle(fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      ' Sign Up',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff0D986A),
                      ),
                    ),
                  ),
                ],
              ),
              /*Last Portion end here*/
            ],
          ),
        ),
      ),
    );
  }
}
