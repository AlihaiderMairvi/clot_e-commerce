import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderplacedscreenView extends StatelessWidget {
  const OrderplacedscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff8E6CEF),
        body: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Center(child: Image.asset("assets/images/order_placed.png")),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                width: 400,
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Order Placed\n Successfully",
                          style: GoogleFonts.gabarito(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff272727)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "You will recieve an email confirmation",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xff8E6CEF),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 80),
                                child: Text(
                                  "See Order details",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
