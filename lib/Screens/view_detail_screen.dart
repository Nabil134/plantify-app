import 'package:flutter/material.dart';
import 'package:hackertoon_task/Screens/addtocart.dart';
import 'package:hackertoon_task/Widgets/custom_text.dart';
import 'package:hackertoon_task/components/MColor.dart';
import 'package:hackertoon_task/components/containertile.dart';
import 'package:hackertoon_task/models/dashboard_model.dart';

class ViewDetailScreen extends StatefulWidget {
  const ViewDetailScreen({super.key});

  @override
  State<ViewDetailScreen> createState() => _ViewDetailScreenState();
}

class _ViewDetailScreenState extends State<ViewDetailScreen> {
  DashboardModel dashboardModel = DashboardModel();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      /*drawer start here*/
      endDrawer: Drawer(
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 17),
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
      ),
      /*Drawer end here*/
      /*bottomNavigationBar start here*/
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddToCart()),
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
              'View 3 items',
              style: TextStyle(color: Mcolor.white),
            ),
            Text(
              '1090',
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
        backgroundColor: Mcolor.lgreen,
        elevation: 0,
        leading: Image.asset('assets/IconImg.png'),
        title: CustomText(
          title: 'PLANTIFY',
          clr: Color(0xff002140),
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
        child: Column(
          children: [
            /*first portion start here*/
            Stack(
              children: [
                Container(
                  height: size.height * 0.75,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Air Purifier',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset('assets/foot.png'),
                            ],
                          ),
                          Container(
                            height: size.height * 0.03,
                            width: size.width * 0.14,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Mcolor.green,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  '4.8',
                                  style: TextStyle(color: Mcolor.green),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Watermelon \n Peperomia',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      const Text('PRICE'),
                      const Text(
                        '\$350',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      const Text('SIZE'),
                      const Text(
                        '5' 'h',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: const EdgeInsets.only(top: 5),
                        child: Image.asset(
                          'assets/Group 60.png',
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        margin: const EdgeInsets.only(bottom: 25),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          size: 40,
                        ),
                      ),
                      Image.asset(
                        'assets/Peperomia Obtusfolia.png',
                        height: 250,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            /*first portion end here*/
            /*second portion start here */
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Overview',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            /*second portion end here */
            /*third portion start here */
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.water_drop,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '250ml',
                            style: TextStyle(
                              color: Color(0xff0D986A),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Water',
                        style: TextStyle(
                          color: Color(0xff002140),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.sunny,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '35-40%',
                            style: TextStyle(
                              color: Color(0xff0D986A),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'LIGHT',
                        style: TextStyle(
                          color: Color(0xff002140),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.data_saver_on_sharp,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '250gm',
                            style: TextStyle(
                              color: Color(0xff0D986A),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'FERTILZER',
                        style: TextStyle(
                          color: Color(0xff002140),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            /*third portion end here */
            /*forth portion start here */
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Plant Bio',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            /*forth portion end here */
            /*fifth portion start here */
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'No green thumb required to keep our artificial\nwatermelon peperomia plant looking lively and\nlush anywhere you place it.',
                    style: TextStyle(
                      color: Color(0xff002140),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            /*fifth portion end here */
            /*sixth portion start here*/

            /*sixth portion end here*/
            SizedBox(
              height: size.height * 0.2,
              child: ListView.builder(
                  itemCount: dashboardModel.images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                            dashboardModel.images[index].image.toString()),
                      ),
                    );
                  }),
            ),
            /*sixth portion end here*/
            /*forth portion start here */
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Similar Plants',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            /*forth portion end here */
            /*fifth portion start here*/
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ContainerTile(Mcolor.lgreen, 'flower.png'),
                  ContainerTile(Mcolor.yellow, 'flower6.png'),
                ],
              ),
            ),
            /*fifth portion end here*/
            SizedBox(
              height: 10,
            ),
            /*last portion start here*/
            Container(
              color: Mcolor.yellow,
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'That very plant?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                      Text(
                        'Just Scan and the AI \nwill know exactly',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Mcolor.dgreen,
                          ),
                        ),
                        child: Text(
                          'Scan Now',
                          style: TextStyle(
                              color: Mcolor.dgreen,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Image.asset('assets/dashboard/tilepic.png'),
                ],
              ),
            ),
            /*last portion end here*/
          ],
        ),
      ),
    );
  }
}
