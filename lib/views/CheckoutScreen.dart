import 'package:ecommerce_project/views/CheckoutScreen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutScreenView extends StatelessWidget {
  CheckoutScreenView({super.key});

  final List<Map<String, dynamic>> cartList = [
    {
      "title": "Shipping Address",
      "subtitle": "Add Shipping Address"
    },
    {
      "title": "Payment Method",
      "subtitle": "Add Payment Method",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Image.asset("assets/images/arrow_back_icon.png"),),
        title: Text(
          "Checkout",
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
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: cartList.length,
                    itemBuilder: (context, i) {
                      final cart = cartList[i];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            title: Text(
                              cart["title"],
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 10,color: Colors.black38),
                            ),
                            subtitle: Text(
                              cart["subtitle"],
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xff272727) ),
                            ),
                            trailing: Image.asset("assets/images/arrowright.png")
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 258,
              ),
              Container(
                width: 300,
                height: 20,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black38),
                    ),
                    Text(
                      "\$200",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12,),
              Container(
                width: 300,
                height: 25,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Cost",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black38),
                    ),
                    Text(
                      "\$8.00",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12,),
              Container(
                width: 300,
                height: 20,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tax",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black38),
                    ),
                    Text(
                      "\$0.00",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12,),
              Container(
                width: 300,
                height: 20,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black38),
                    ),
                    Text(
                      "\$208",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 89,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xff8E6CEF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10,),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("\$208",style: GoogleFonts.gabarito(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.white),),
                          ],
                        ),
                        SizedBox(width: 125,),
                        Column(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckoutScreen2View()));
                            }, child: Text("Place Order",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white),),)
                            
                          ],
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
