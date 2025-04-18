import 'package:ecommerce_project/views/ForgotPassword.dart';
import 'package:ecommerce_project/views/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:string_validator/string_validator.dart';

class CreateAccountView extends StatefulWidget {
  CreateAccountView({super.key});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController eamilController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Image.asset("assets/images/arrow_back_icon.png"),)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      'Create Account',
                      style: TextStyle(
                          color: Color(0xff272727),
                          fontWeight: FontWeight.w700,
                          fontSize: 26),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                width: 342,
                height: 56,
                decoration: BoxDecoration(color: Color(0xffF4F4F4),borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: TextFormField(
                          controller: firstnameController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Firstname",
                              hintStyle: TextStyle(
                                  fontSize: 16, color: Colors.black54)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 342,
                height: 56,
                decoration: BoxDecoration(color: Color(0xffF4F4F4),borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: TextFormField(
                          controller: lastnameController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Lastname",
                              hintStyle: TextStyle(
                                  fontSize: 16, color: Colors.black54)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 342,
                height: 56,
                decoration: BoxDecoration(color: Color(0xffF4F4F4),borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: TextFormField(
                          controller: eamilController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email Address",
                              hintStyle: TextStyle(
                                  fontSize: 16, color: Colors.black54)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 342,
                height: 56,
                decoration: BoxDecoration(color: Color(0xffF4F4F4),borderRadius: BorderRadius.circular(4)),
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
                                  fontSize: 16, color: Colors.black54)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 344,
                      height: 49,
                      child: ElevatedButton(
                          onPressed: () {
                            if (firstnameController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          "Please enter your first name")));
                              return;
                            }
                            if (lastnameController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content:
                                          Text("Please enter your last name")));
                              return;
                            }
                            if (eamilController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content:
                                          Text("Please enter your email")));
                              return;
                            }
                            if (passwordController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content:
                                          Text("Please enter your password")));
                              return;
                            }
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordView()));
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
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "Forgot Password ? ",
                    style: TextStyle(
                      letterSpacing: -0.41,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff272727),
                    ),
                  ),
                  Text(
                    "Reset",
                    style: TextStyle(
                      letterSpacing: -0.41,
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
