import 'package:flutter/material.dart';
import 'package:hackertoon_task/Screens/checkout.dart';
import 'package:hackertoon_task/Widgets/custom_text.dart';
import 'package:hackertoon_task/components/MColor.dart';
import 'package:hackertoon_task/components/drawer.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  /*
  int num = 0;
  int num1 = 0;
  int num2 = 0;
  int num3 = 0;
  int num4 = 0;
  int num5 = 0;
  int num6 = 0;
  */
  num num0 = 0;
  num num1 = 0;
  num num2 = 0;
  num total = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: drawer(context),
      /*bottom Navigation Bar start here*/
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CheckOut()),
          );
        },
        child: Container(
          height: size.height * 0.06,
          decoration: BoxDecoration(
            color: Mcolor.dgreen,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white),
              ),
              child: Image.asset(
                'assets/image1.png',
                height: 15,
              ),
            ),
            Text(
              '\$${(num0 * 350) + (num1 * 400) + (num2 * 260) + 80}',
              style: TextStyle(
                  color: Mcolor.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )
          ]),
        ),
      ),
      /*bottomNavigationBar end here*/

      appBar: AppBar(
        backgroundColor: Mcolor.white,
        elevation: 0,
        leading: Image.asset('assets/IconImg.png'),
        title: CustomText(
          title: 'PLANTIFY',
          clr: Color(0xff203901),
          font: FontWeight.w700,
          size: 22,
        ),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.black,
          ),
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            );
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*first portion start here*/
              Text(
                'Your Bag',
                style: TextStyle(
                    color: Mcolor.dgreen,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              /*first portion end here*/
              /*second portion start here*/
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/dashboard/flower2.png',
                      height: 60,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Watermelon Peperomia',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Mcolor.black,
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    num0++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 16,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              '$num0',
                              style:
                                  TextStyle(color: Mcolor.dgreen, fontSize: 16),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Mcolor.black)),
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (num0 > 0) {
                                        num0--;
                                      }
                                    });
                                  },
                                  child: const Icon(
                                    Icons.minimize,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.delete),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.bookmark_border,
                      color: Mcolor.dgreen,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text('₹350'),
                  ],
                ),
              ),
              /*second portion end here*/
              /*third portion start here*/
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/dashboard/flower.png',
                      height: 60,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Peperomia Obtusfolia',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Mcolor.black,
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    num1++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 16,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              '$num1',
                              style:
                                  TextStyle(color: Mcolor.dgreen, fontSize: 16),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Mcolor.black)),
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (num1 > 0) {
                                        num1--;
                                      }
                                    });
                                  },
                                  child: const Icon(
                                    Icons.minimize,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.delete),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.bookmark_border,
                      color: Mcolor.dgreen,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text('₹400'),
                  ],
                ),
              ),
              /*third portion end here*/
              /*forth portion start here*/
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/dashboard/flower6.png',
                      height: 60,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Cactus',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Mcolor.black,
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    num2++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 16,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              '$num2',
                              style:
                                  TextStyle(color: Mcolor.dgreen, fontSize: 16),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Mcolor.black)),
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (num2 > 0) {
                                        num2--;
                                      }
                                    });
                                  },
                                  child: const Icon(
                                    Icons.minimize,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.delete),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.bookmark_border,
                      color: Mcolor.dgreen,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text('₹260'),
                  ],
                ),
              ),
              /*forth portion end here*/
              /*fifth portion start here*/
              ListTile(
                leading: Image.asset('assets/addtocart/van.png'),
                title: Row(
                  children: [
                    const Text(
                      'Delivery',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 120,
                      child: LinearProgressIndicator(
                        value: 60,
                        color: Mcolor.green,
                      ),
                    ),
                  ],
                ),
                subtitle: const Text(
                  'Order above ₹1200 to get \nfree delivery Shop for more ₹190',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Column(
                  children: [
                    Text(
                      '\$80',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              /*fifth portion end here*/
              /*sixth portion start here*/
              ListTile(
                leading: Image.asset('assets/addtocart/van.png'),
                title: const Text(
                  'Apply Coupon',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: SizedBox(
                  width: 120,
                  child: LinearProgressIndicator(
                    value: 60,
                    color: Mcolor.green,
                  ),
                ),
              ),
              /*sixth portion end here*/
              /*last portion start here*/
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      '\$${(num0 * 350) + (num1 * 400) + (num2 * 260) + 80}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ],
                ),
              ),
              /*last portion end here*/
            ],
          ),
        ),
      ),
    );
  }
}
