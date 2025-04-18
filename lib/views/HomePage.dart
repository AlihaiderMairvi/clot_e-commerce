import 'package:flutter/material.dart';

import 'LoginEmail.dart';
class HomepageView extends StatefulWidget {
   HomepageView({super.key});

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginEmailView()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8E6CEF),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 280,),
            Center(
              child: Image.asset('assets/images/clot.png'),
            )
          ],
        ),
      ),
    );
  }
}
