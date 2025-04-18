import 'package:ecommerce_project/views/AddAddressScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressscreenView extends StatelessWidget {
  const AddressscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Address",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset("assets/images/arrow_back_icon.png"),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white70),
                child: ListTile(
                    title: Text(
                      "2715 Ash Dr. San Jose, South",
                      style: GoogleFonts.gabarito(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    trailing: TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddaddressscreenView()));
                    }, child: Text("Edit",style: TextStyle(fontSize: 12),))),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white70),
              child: ListTile(
                  title: Text(
                    "2715 Ash Dr. San Jose, South",
                    style: GoogleFonts.gabarito(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  trailing: TextButton(onPressed: () {}, child: Text("Edit",style: TextStyle(fontSize: 12),))),
            )
          ],
        ),
      ),
    );
  }
}
