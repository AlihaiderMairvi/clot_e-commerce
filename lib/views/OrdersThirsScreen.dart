import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersthirsscreenView extends StatefulWidget {
  OrdersthirsscreenView({super.key});

  @override
  State<OrdersthirsscreenView> createState() => _OrdersthirsscreenViewState();
}

class _OrdersthirsscreenViewState extends State<OrdersthirsscreenView> {
  final List<Map<String, dynamic>> notificationList = [
    {
      "text": "Delivered",
      "trailing": "28 May",
      "isselected": true,
    },
    {
      "text": "Shipped",
      "trailing": "28 May",
      "isselected": true,
    },
    {
      "text": "Order Confirmed ",
      "trailing": "28 May",
      "isselected": true,
    },
    {
      "text": "Order Placed",
      "trailing": "28 May",
      "isselected": true,
    },
  ];

  void _toggleCheck(int index) {
    setState(() {
      notificationList[index]["isselected"] =
          !notificationList[index]["isselected"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order  #456765",
          style:
              GoogleFonts.gabarito(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset("assets/images/arrow_back_icon.png"),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: 342,
                height: 280,
                child: ListView.builder(
                    itemCount: notificationList.length,
                    itemBuilder: (context, i) {
                      final notification = notificationList[i];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          onTap: () => _toggleCheck(i),
                          leading: Icon(
                            notification["isselected"]
                                ? Icons.check_circle_outline
                                : Icons.check_circle,
                            color: Color(0xff8E6CEF),
                          ),
                          title: Text(
                            notification["text"],
                            style: GoogleFonts.gabarito(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          trailing: Text(notification['trailing']),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Order Items",
                      style: GoogleFonts.gabarito(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height:72,
                  width: 342,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF4F4F4),
                  ),
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: ListTile(
                            title: Text("4 items",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),),
                            leading: Image.asset("assets/images/Task_image.png"),
                            trailing: TextButton(
                                onPressed: () {}, child: Text("View All",style: GoogleFonts.gabarito(fontSize: 12,fontWeight: FontWeight.w700),)),
                          ),
                        );
                      }),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Shipping details",
                      style: GoogleFonts.gabarito(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 342,
                  height: 64,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF4F4F4)),
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Text(
                            "2715 Ash Dr. San Jose, South Dakota 83475",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w400),
                          ),
                          subtitle: Text(
                            "121-224-7890",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w400),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
