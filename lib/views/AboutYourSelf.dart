import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BottomBarScreen.dart';
import 'Frame.dart';

class AboutyourselfView extends StatefulWidget {
  const AboutyourselfView({super.key});

  @override
  State<AboutyourselfView> createState() => _AboutyourselfViewState();
}

class _AboutyourselfViewState extends State<AboutyourselfView> {
  final List<String> ageRange = [
    'Age 20',
    'Age 25',
    'Age 35',
    'Age 45',
    'Age 50',
  ];

  // Variable to store the selected value
  String? selectedValue;
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                height: 99,
              ),
              Row(
                children: [
                  Text(
                    "Tell us About yourself",
                    style: GoogleFonts.gabarito(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color(0xff272727)),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    "Who do you shop for ?",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff272727)),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 161,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedGender = selectedGender == 'Men' ? null : 'Men';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedGender == 'Men'
                              ? Color(0xff8E6CEF)
                              : Color(0xffF4F4F4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        child: Text("Men",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: selectedGender == 'Men'
                                  ? Colors.white
                                  : Colors.black,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      width: 161,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedGender =
                                selectedGender == 'Women' ? null : 'Women';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedGender == 'Women'
                              ? Color(0xff8E6CEF)
                              : Color(0xffF4F4F4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),

                        ),
                        child: Text("Women",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: selectedGender == 'Women'
                                  ? Colors.white
                                  : Colors.black,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    "How Old are you ?",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff272727)),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 342,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Color(0xffF4F4F4), // Light grey background
                        borderRadius: BorderRadius.circular(100), // Rounded corners
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16,top: 5),
                        child: DropdownButton<String>(
                          value: selectedValue,
                          hint: Row(
                            children: [
                              Container(
                                width: 250,
                                height: 25,
                                child: Text(
                                  "Age Range",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xff272727)),
                                ),
                              ),
                            ],
                          ),
                          // Placeholder text
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue; // Update the selected value
                            });
                          },
                          items: ageRange.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          underline: Container(),
                          dropdownColor: Color(0xFFF4F4F4),
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff272727)),
                          icon: Image.asset("assets/images/arrowdown2.png"),
                          iconSize: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   SizedBox(height: 490,),
                  Expanded(
                    child: Container(
                      width: 342,
                      height: 52,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomBarView()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff8E6CEF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          child: Container(
                            width: 50,
                            height: 20,
                            child: Text(
                              "Finish",
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
