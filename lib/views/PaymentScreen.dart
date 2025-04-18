import 'package:ecommerce_project/views/AddAddressScreen.dart';
import 'package:ecommerce_project/views/AddCardScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreenView extends StatelessWidget {
  PaymentScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset("assets/images/arrow_back_icon.png"),
        ),
        title: Text(
          "Payment",
          style: GoogleFonts.gabarito(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff272727)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Cards",
                      style: GoogleFonts.gabarito(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff272727)),
                    )
                  ],
                ),
              ),

              Container(
                width: 342,
                height: 72,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffF4F4F4)),
                child: Padding(
                  padding: const EdgeInsets.only(top:12,left: 12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddcardscreenView()));
                        }, child:Text(
                          "**** 4187",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500,color: Color(0xff272727)),
                        ),),
                          Image.asset("assets/images/cards_pic.png"),
                          SizedBox(width: 170,),
                          Image.asset("assets/images/arrowright.png"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 342,
                height: 72,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffF4F4F4)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12,left: 12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddcardscreenView()));
                          }, child: Text(
                            "**** 9387",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500,color: Color(0xff272727)),
                          ),),
                          Image.asset("assets/images/cards_pic.png"),
                          SizedBox(width: 170,),
                          Image.asset("assets/images/arrowright.png")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Paypal",
                      style: GoogleFonts.gabarito(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff272727)),
                    )
                  ],
                ),
              ),
              Container(
                width: 342,
                height: 72,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffF4F4F4)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Cloth@gmail.com",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(width: 150,),
                      Image.asset("assets/images/arrowright.png")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
