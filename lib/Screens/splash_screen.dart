import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hackertoon_task/Screens/login_page.dart';
import 'package:hackertoon_task/Widgets/custom_button.dart';
import 'package:hackertoon_task/components/MColor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          /*first portion start here*/
          Container(
            height: size.height * 0.60,
            width: size.width,
            decoration: BoxDecoration(
              color: Mcolor.green,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/Logo.png',
                  height: 200,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Plantify',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Mcolor.white),
                )
              ],
            ),
          ),
          /*first  portion end here*/
          /*second portion start here*/
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'GET READY\nBE HIGYENIC',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Mcolor.green),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Jelajahi AiLearn untuk menambah kemampuanmu\ndalam mengoperasikan Adobe Illustrator',
                  style: TextStyle(color: Mcolor.green, fontSize: 16),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                CustomButton(name: "MASUK", onPressed: () {}),
              ],
            ),
          ),
          /*second portion end here*/
        ],
      ),
    );
  }
}
