import 'package:flutter/material.dart';
import 'package:hackertoon_task/Widgets/custom_button.dart';
import 'package:hackertoon_task/components/MColor.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Mcolor.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  height: size.height * 0.05,
                ),
                /*second portion start here*/
                Text(
                  textAlign: TextAlign.center,
                  'Order\nReceived',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Mcolor.dgreen),
                ),
                /*second portion end here*/
                SizedBox(
                  height: size.height * 0.05,
                ),
                /*third portion start here*/
                Text(
                  textAlign: TextAlign.center,
                  'Order ID: #293092309',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Mcolor.dgreen),
                ),
                /*third portion end here*/
                SizedBox(
                  height: size.height * 0.05,
                ),
                /*forth portion start here*/
                Image.asset('assets/checkout/bottom.png'),
                /*forth portion end here*/
                SizedBox(
                  height: size.height * 0.05,
                ),
                /*last portion start here*/
                CustomButton(name: "KARIM", onPressed: () {}),
                /*last portion end here*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
