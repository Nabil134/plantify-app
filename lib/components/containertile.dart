import 'package:flutter/material.dart';

class ContainerTile extends StatelessWidget {
  final Color color;
  final String img;
  ContainerTile(this.color, this.img);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 40, top: 30),
          width: size.width * 0.5,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.20,
                        child: const Text(
                          'Air Purifier',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Image.asset('assets/foot.png'),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Peperomia',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        '400',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.favorite,
                        size: 20,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: 180,
          bottom: 30,
          child: Image.asset(
            'assets/dashboard/$img',
            height: 100,
          ),
        ),
      ],
    );
  }
}
