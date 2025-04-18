import 'package:ecommerce_project/views/HomePage.dart';
import 'package:ecommerce_project/views/LoginPassword.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:string_validator/string_validator.dart';

class LoginEmailView extends StatefulWidget {
  LoginEmailView({super.key});

  @override
  State<LoginEmailView> createState() => _LoginEmailViewState();
}

class _LoginEmailViewState extends State<LoginEmailView> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 99,
              ),
              Row(
                children: [
                  Text(
                    'Sign in',
                    style: TextStyle(
                        color: Color(0xff272727),
                        fontWeight: FontWeight.w700,
                        fontSize: 32),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
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
                            hintText: "Email Address",
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
              SizedBox(
                height: 16,
              ),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPasswordView()));
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
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    "Dont have an Account ? ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff272727),
                    ),
                  ),
                  Text(
                    "Create One",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff272727),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 71,
              ),
              Container(
                width: 344,
                height: 52,
                decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(100.0)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            'assets/images/Apple.png',
                            height: 25,
                            width: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Continue With Apple",
                              style: TextStyle(
                                height: 2,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xff272727),
                                letterSpacing: -0.5
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: 344,
                height: 52,
                decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(100.0)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            'assets/images/Google.png',
                            height: 25,
                            width: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Continue With Google",
                              style: TextStyle(
                                height: 2,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xff272727),
                                letterSpacing: -0.5,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: 344,
                height: 52,
                decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(100.0)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            'assets/images/Facebook.png',
                            height: 25,
                            width: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Continue With Facebook",
                              style: TextStyle(
                                letterSpacing: -0.5,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xff272727),
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
