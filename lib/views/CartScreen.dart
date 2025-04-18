import 'package:ecommerce_project/views/CheckoutScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartscreenView extends StatelessWidget {
  CartscreenView({super.key});

  final List<Map<String, dynamic>> cartList = [
    {
      "image": "assets/images/mens_jacket.png",
      "title": "Men's Harrington Jacket",
      "price": "#148",
      "subtitle": "Size - M  Color - Lemon"
    },
    {
      "image": "assets/images/cart_img_2.png",
      "title": "Men's Coaches Jacket",
      "price": "#148",
      "subtitle": "Size - M  Color - Black",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Image.asset("assets/images/arrow_back_icon.png"),),
        title: Text(
          "Cart",
          style: GoogleFonts.gabarito(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: const Color(0xff272727)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Remove All",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xff272727)),
                      )),
                ],
              ),
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
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 9),
                            ),
                            subtitle: Text(
                              cart["subtitle"],
                              style: const TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w400),
                            ),
                            leading: Image.asset(cart["image"]),
                            trailing: const Wrap(children: <Widget>[
                              Icon(
                                Icons.add_circle,
                                color: Color(0xff8E6CEF),
                                size: 30,
                              ),
                              Icon(
                                Icons.remove_circle,
                                color: Color(0xff8E6CEF),
                                size: 30,
                              ),
                            ]),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 170,
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
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, i) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: ListTile(
                            leading:
                                Image.asset("assets/images/discountshape.png"),
                            title: const Text(
                              "Enter Coupon Code",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black38),
                            ),
                            trailing:
                                Image.asset("assets/images/forward_icon.png"),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 342,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckoutScreenView()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff8E6CEF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          child: Container(
                            width: 100,
                            height: 20,
                            child: Text(
                              "Checkout",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xffFFFFFF)),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
