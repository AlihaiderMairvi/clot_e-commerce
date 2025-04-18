import 'package:ecommerce_project/views/AddressScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsProfileView extends StatelessWidget {
   SettingsProfileView({super.key});

   List<Map<String,dynamic>> profileList = [
     {
       "title": "Address"
     },{
       "title": "Wishlist"
     },{
       "title": "Payment"
     },{
       "title": "Help"
     },{
       "title": "Support"
     },
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("assets/images/profile.png")],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text("Gilbert Jones",
                        style: GoogleFonts.gabarito(
                            fontWeight: FontWeight.w700, fontSize: 16)),
                    subtitle: Wrap(children: <Widget>[
                      Row(
                        children: [
                          Text(
                            "Glbertjones01@gmail.com",
                            style: GoogleFonts.gabarito(
                                fontWeight: FontWeight.w400, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("121-224-7890",
                              style: GoogleFonts.gabarito(
                                  fontWeight: FontWeight.w400, fontSize: 12)),
                        ],
                      ),
                    ]),
                    trailing: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressscreenView()));
                        },
                        child: Text(
                          "Edit",
                          style: TextStyle(color: Color(0xff8E6CEF)),
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 385,
              child: ListView.builder(itemCount: profileList.length,itemBuilder: (context,i){
                final profile = profileList[i];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70
                    ),
                    child: ListTile(
                      title: Text(profile["title"]),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){}, child: Text("Sign Out",style: TextStyle(color: Color(0xffFA3636)),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
