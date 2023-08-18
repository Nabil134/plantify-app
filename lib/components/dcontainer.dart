import 'package:flutter/material.dart';
import 'package:hackertoon_task/models/dashboard_model.dart';

class Dcontainer extends StatelessWidget {
  final String image1;
  final String image2;
  final Function()? onPressed;

  Dcontainer({required this.image1, required this.image2, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            height: 177,
            width: 280,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$image1'),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(220, 0, 0, 0),
            child: Image.asset(
              'assets/$image2',
              height: 162,
              width: 147,
            ),
          ),
        ],
      ),
    );
  }
}
