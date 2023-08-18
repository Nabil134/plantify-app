import 'package:flutter/material.dart';
import 'package:hackertoon_task/components/MColor.dart';

Widget drawer(context) {
  final size = MediaQuery.of(context).size;
  return Drawer(
    child: Container(
      color: Mcolor.dgreen,
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/image1.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Shop',
                    style: TextStyle(
                        color: Mcolor.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/image2.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Plant Care',
                    style: TextStyle(
                        color: Mcolor.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/image3.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Community',
                    style: TextStyle(
                        color: Mcolor.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/image4.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'My Account',
                    style: TextStyle(
                        color: Mcolor.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/image5.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Truck Order',
                    style: TextStyle(
                        color: Mcolor.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Text(
                'Get The Dirt.',
                style: TextStyle(
                    color: Mcolor.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 17),
                decoration:
                    BoxDecoration(border: Border.all(color: Mcolor.white)),
                child: Text(
                  'Enter your Email',
                  style: TextStyle(
                      color: Mcolor.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 14),
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Text(
                'FAQ',
                style: TextStyle(
                    color: Mcolor.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                'About Us',
                style: TextStyle(
                    color: Mcolor.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                'Contact Us',
                style: TextStyle(
                    color: Mcolor.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    ),
  );
  /*Drawer end here*/
}
