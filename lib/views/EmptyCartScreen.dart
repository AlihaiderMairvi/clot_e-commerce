import 'package:ecommerce_project/views/CartScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyCartScreenView extends StatelessWidget {
  const EmptyCartScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Image.asset("assets/images/arrow_back_icon.png"),)
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/parcel.png'),
              SizedBox(
                height: 27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Cart is Empty",
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CartscreenView()));
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
