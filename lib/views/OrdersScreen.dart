import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'OrdersSecondScreen.dart';

class OrdersscreenView extends StatelessWidget {
  const OrdersscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Orders",
          style: GoogleFonts.gabarito(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/check-out.png'),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "No Orders yet",
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderssecondscreenView()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff8E6CEF),
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30)
                      ),
                      child: Text(
                        'Explore Categories',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFFFFFF)),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
