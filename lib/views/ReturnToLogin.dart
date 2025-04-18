import 'package:ecommerce_project/views/AboutYourSelf.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReturnToLoginView extends StatelessWidget {
  const ReturnToLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(
              height: 280,
            ),
            Center(
              child: Image.asset('assets/images/mail+arrow.png'),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: 342,
              height: 60,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'We Sent you an Email to reset',
                          style: TextStyle(
                            color: Color(0xff272727),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'your password.',
                          style: TextStyle(
                              color: Color(0xff272727),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: 180,
              height: 55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutyourselfView()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff8E6CEF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        padding: EdgeInsets.only(top: 16,right: 24,bottom: 16,left: 24),
                      ),
                      child: Text(
                        "Return to Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xffFFFFFF)),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
