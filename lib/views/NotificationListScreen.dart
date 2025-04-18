import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationlistscreenView extends StatelessWidget {
  NotificationlistscreenView({super.key});

  final List<Map<String, dynamic>> notificationList = [
    {
      "text":
          "Gilbert, you placed and order check your order history for full details",
      "image": "assets/images/notificationbing.png"
    },
    {
      "text":
          "Gilbert, Thank you for shopping with us we have canceled order #24568.",
      "image": "assets/images/notificationbell.png"
    },
    {
      "text":
          "Gilbert, your Order #24568 has been  confirmed check  your order history for ",
      "image": "assets/images/notificationbell.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style:
              GoogleFonts.gabarito(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        centerTitle: true,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Image.asset("assets/images/arrow_back_icon.png"),)
      ),
      body: Padding(
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
                        width: 342,
                        height: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color: Color(0xffF4F4F4)
                        ),
                        child: ListTile(
                          leading: Container(
                            width: 40,
                              height: 40,
                              child: Image.asset(notification["image"])),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              width: 232,
                              height: 45,
                              child: Text(
                                notification["text"],
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
