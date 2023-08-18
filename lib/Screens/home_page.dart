import 'package:flutter/material.dart';
import 'package:hackertoon_task/Screens/view_detail_screen.dart';
import 'package:hackertoon_task/Widgets/custom_text.dart';
import 'package:hackertoon_task/components/dcontainer.dart';
import 'package:hackertoon_task/components/drawer.dart';
import 'package:hackertoon_task/models/dashboard_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List names = [
    {'name': 'Top Pick'},
    {'name': 'Indoor'},
    {'name': 'Outdoor '},
    {'name': 'Seeds'},
    {'name': 'Top Pick'},
    {'name': 'Indoor'},
    {'name': 'Outdoor '},
    {'name': 'Seeds'},
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      endDrawer: drawer(context),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustomText(
          title: 'Plantify',
          clr: Color(0xff002140),
          font: FontWeight.w700,
          size: 22,
        ),
        actions: [
          Icon(
            Icons.notifications,
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
        leading: Image.asset('assets/IconImg.png'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              /*first portion start here*/
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      width: 340,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/homePageImg.png'),
                        ),
                      ),
                    ),
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
                  Expanded(
                    flex: 5,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        suffixIcon: const Icon(
                          Icons.document_scanner_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Expanded(
                    child: Container(
                      height: size.height * 0.07,
                      width: size.width * 0.07,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(Icons.settings),
                    ),
                  ),
                ],
              ),
              /*second portion end here*/
              const SizedBox(
                height: 20,
              ),
              /*third portion start here*/

              TabBar(
                controller: tabController,
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(
                    child: Text(
                      'Top Pick',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'OutDoor',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Indoor',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Seeds',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              /*third portion end here*/
              SizedBox(
                height: size.height * 0.05,
              ),

              /*forth portion start here*/
              Dcontainer(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ViewDetailScreen()),
                    );
                  },
                  image1: 'Group 62.png',
                  image2: 'Peperomia Obtusfolia.png'),
              SizedBox(
                height: 10,
              ),
              Dcontainer(image1: 'Group 63.png', image2: '4.png'),
              SizedBox(
                height: 5,
              ),
              /*sixth portion start here*/
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 145,
                      width: 337,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Group 81.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              /*sixth portion end here*/
              Dcontainer(image1: 'Group 64.png', image2: 'Layer 8.png'),
              Dcontainer(image1: 'Group 80.png', image2: 'Layer 27.png'),

              /*forth portion end here*/

              SizedBox(
                height: 20,
              ),
              /*eleven portion start here*/
              Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Plant a Life',
                      style: TextStyle(
                        color: Color(0xff002140),
                        fontWeight: FontWeight.w700,
                        fontSize: 36,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Live amongst Living',
                      style: TextStyle(
                        color: Color(0xff002140),
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Spread the joy',
                      style: TextStyle(
                        color: Color(0xff002140),
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              /*eleven portion end here*/
            ],
          ),
        ),
      ),
    );
  }
}
