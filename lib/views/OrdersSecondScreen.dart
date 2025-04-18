import 'package:ecommerce_project/views/OrdersThirsScreen.dart';
import 'package:ecommerce_project/views/ProductPage1.dart';
import 'package:ecommerce_project/views/SearchFirstScreen.dart';
import 'package:ecommerce_project/views/SearchSecondScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderssecondscreenView extends StatefulWidget {
  const OrderssecondscreenView({super.key});

  @override
  State<OrderssecondscreenView> createState() => _OrderssecondscreenViewState();
}

class _OrderssecondscreenViewState extends State<OrderssecondscreenView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> notificationList = [
    {
      "text":
      "Order  #456765",
      "subtitle":"4 items",
      "image": "assets/images/Task_image.png",
      "image2": "assets/images/arrowright.png",
    },
    {
      "text":
      "Order  #454569",
      "subtitle":"2 items",
      "image": "assets/images/Task_image.png",
      "image2": "assets/images/arrowright.png",
    },
    {
      "text":
      "Order  #454809",
      "subtitle":"1 items",
      "image": "assets/images/Task_image.png",
      "image2": "assets/images/arrowright.png",
    }
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order",
          style:
              GoogleFonts.gabarito(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        bottom: TabBar(controller: _tabController, isScrollable: true, tabs: [
          _buildTab("Processing", 0),
          _buildTab("Shipped", 1),
          _buildTab("Delivered", 2),
          _buildTab("Returned", 3),
          _buildTab("Canceled", 4),
        ]),
        centerTitle: true,
      ),
      body: TabBarView(
          controller: _tabController,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: notificationList.length,
                        itemBuilder: (context, i) {
                          final notification = notificationList[i];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),color: Color(0xffF4F4F4)
                              ),
                              child: ListTile(
                                leading: Image.asset(notification["image"]),
                                title: Text(
                                  notification["text"],
                                  style: TextStyle(
                                      fontSize: 12, fontWeight: FontWeight.w500),
                                ),
                                subtitle: Text(
                                  notification["subtitle"],
                                  style: TextStyle(
                                      fontSize: 12, fontWeight: FontWeight.w400,color: Colors.black38),
                                ),
                                trailing: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(notification["image2"]),
                                )
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            Center(
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchFirstScreenView()));
              }, child: Text("Go to search 1st screen"))
            ),
            Center(
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchSecondScreeenView()));
                }, child: Text("Go to search 2nd screen"))
            ),
            Center(
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Productpage1View()));
                }, child: Text("Go to products page"))
            ),
            Center(
              child: Text("Canceled"),
            ),
      ]),
    );
  }

  Widget _buildTab(String text, int index) {
    return Tab(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Color(0xff8E6CEF) : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: _selectedIndex == index ? Colors.white : Color(0xff272727),
          ),
        ),
      ),
    );
  }
}
