import 'package:ecommerce_project/views/CreateAccount.dart';
import 'package:ecommerce_project/views/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:string_validator/string_validator.dart';
class LoginPasswordView extends StatefulWidget {
  LoginPasswordView({super.key});

  @override
  State<LoginPasswordView> createState() => _LoginPasswordViewState();
}

class _LoginPasswordViewState extends State<LoginPasswordView> {
  TextEditingController passwordController  = TextEditingController();

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
                        letterSpacing: -0.41,
                        fontSize: 32),
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
                          controller: passwordController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
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
              SizedBox(height: 16,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 344,
                      height: 49,
                      child: ElevatedButton(
                          onPressed: () {
                            if (passwordController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text("Please enter your password")));
                              return;
                            }
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccountView()));
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
              SizedBox(height: 16,),
              Row(
                children: [
                  Text(
                    "Forgot Password ? ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff272727),
                    ),
                  ),
                  Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff272727),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
