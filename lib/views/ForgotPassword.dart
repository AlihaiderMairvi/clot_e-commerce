import 'package:ecommerce_project/views/HomePage.dart';
import 'package:ecommerce_project/views/ReturnToLogin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:string_validator/string_validator.dart';
class ForgotPasswordView extends StatefulWidget {
  ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  TextEditingController emailController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(),
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Image.asset("assets/images/arrow_back_icon.png")),
          )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: Color(0xff272727),
                        fontWeight: FontWeight.w700,
                        fontSize: 26),
                  ),
                ],
              ),
              SizedBox(height: 32,),
              Container(
                width: 342,
                height: 56,
                decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(4)
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Email Address",
                              hintStyle: TextStyle(
                                  color: Colors.black54
                              )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 32,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 344,
                      height: 49,
                      child: ElevatedButton(
                          onPressed: () {
                            if (emailController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text("Please enter your email")));
                              return;
                            }
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ReturnToLoginView()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff8E6CEF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            padding: EdgeInsets.only(
                                top: 11, bottom: 11, right: 48.6, left: 48.6),
                          ),
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xffFFFFFF)),
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
