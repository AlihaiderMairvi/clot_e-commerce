import 'package:ecommerce_project/views/EmptyCartScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Productpage1View extends StatefulWidget {
  const Productpage1View({super.key});

  @override
  State<Productpage1View> createState() => _Productpage1ViewState();
}

class _Productpage1ViewState extends State<Productpage1View> {
  final List<Map<String, dynamic>> productImageList = [
    {
      "image": "assets/images/Men's jacket_2.png",
    },
    {
      "image": "assets/images/Men's jackets_1.png",
    },
    {
      "image": "assets/images/Men's jackets_1.png",
    },
    {
      "image": "assets/images/Men's jacket_2.png",
    },
    {
      "image": "assets/images/Men's jackets_1.png",
    },
  ];

  //Dropdown
  String? selectedButton;

  //favourite button toggle
  bool isFavourite = false;

  void _toggleFavourite() {
    setState(() {
      isFavourite = !isFavourite;
    });
  }

  //increment & decrement
  int quality = 1;

  //increment
  void _incrementQuality() {
    setState(() {
      quality++;
    });
  }

  //decrement
  void _decrementQuality() {
    setState(() {
      if (quality > 1) {
        quality--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset("assets/images/arrow_back_icon.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: _toggleFavourite,
                icon: Container(
                  width: 30,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffF4F4F4)),
                  child: Container(
                    width: 13,
                    height: 11,
                    child: Icon(
                      isFavourite ? Icons.favorite : Icons.favorite_border,
                      color: isFavourite ? Colors.blue : null,
                    ),
                  ),
                )),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 300, // Adjust height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productImageList.length,
                        itemBuilder: (context, index) {
                          final item = productImageList[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Column(
                              children: [
                                Container(
                                  width: 150, // Adjust width as needed
                                  height: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(item["image"]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Men's Harrington Jacket",
                          style: GoogleFonts.gabarito(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "\$148",
                          style: GoogleFonts.gabarito(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff8E6CEF)),
                        ),
                      ],
                    ),
                    //Size button
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) {
                                  return FractionallySizedBox(
                                    heightFactor: 0.5,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 17,top: 14,),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 150,
                                                  ),
                                                  Text(
                                                    "Size",
                                                    style: GoogleFonts.gabarito(
                                                        fontSize: 24,
                                                        fontWeight:
                                                        FontWeight.w700),
                                                  ),
                                                  SizedBox(
                                                    width: 90,
                                                  ),
                                                  Expanded(
                                                    child: IconButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      icon:
                                                      Image.asset("assets/images/cross_icon.png")
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  TextButton(
                                                      onPressed: () {},
                                                      child:
                                                          _buildSizeButton('S  '),
                                                      style:
                                                          TextButton.styleFrom()),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: _buildSizeButton('M  '),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: _buildSizeButton('L   '),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: _buildSizeButton('XL '),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          icon: Row(
                            children: [
                              Icon(Icons.keyboard_arrow_down),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                "S",
                                style: GoogleFonts.gabarito(
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffF4F4F4)),
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 190,
                              ),
                              Text(
                                "Size",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff272727),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //Colour button
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: FractionallySizedBox(
                                      heightFactor: 0.5,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 17,top: 14,),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 140,
                                                  ),
                                                  Text(
                                                    "Color",
                                                    style: GoogleFonts.gabarito(
                                                        fontSize: 24,
                                                        fontWeight:
                                                        FontWeight.w700),
                                                  ),
                                                  SizedBox(
                                                    width: 90,
                                                  ),
                                                  Expanded(
                                                    child: IconButton(
                                                        onPressed: () {
                                                          Navigator.pop(context);
                                                        },
                                                        icon:
                                                        Image.asset("assets/images/cross_icon.png")
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: _buildColourButton(
                                                        'Orange'),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: _buildColourButton(
                                                        'Black '),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: _buildColourButton(
                                                        'Red     '),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        _buildColourButton('Yellow'),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        _buildColourButton(
                                                            'Blue    '),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          icon: Row(
                            children: [
                              Icon(Icons.keyboard_arrow_down),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset("assets/images/colour_icon.png")
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffF4F4F4),
                          ),
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 173,
                              ),
                              Text(
                                "Colour",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff272727),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //Quality button
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 58,
                      width: 342,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  "Quantity",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: _incrementQuality,
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Color(0xff8E6CEF),
                                      size: 40,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "$quality",
                                    style: GoogleFonts.gabarito(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(
                                    onPressed: _decrementQuality,
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: Color(0xff8E6CEF),
                                      size: 40,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Row(
                      children: [
                        Text(
                          "Built for life and made to last, this full-zip corduroy jacket is\n part of our Nike Life collection. The spacious fit gives you\n plenty of room to layer underneath, while the soft corduroy\n keeps it casual and timeless.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 9),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Text(
                          "Shipping & Returns",
                          style: GoogleFonts.gabarito(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          "Free standard shipping and free 60-day returns",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Text(
                          "Reviews",
                          style: GoogleFonts.gabarito(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          "4.5 Ratings",
                          style: GoogleFonts.gabarito(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          "213 Reviews",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/girl_profile.png"),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "Alex Morgan",
                                    style: GoogleFonts.gabarito(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff8E6CEF),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff8E6CEF),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff8E6CEF),
                                  ),
                                  Icon(Icons.star,color: Colors.grey,),
                                  Icon(Icons.star,color: Colors.grey,),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          "Gucci transcribes its heritage, creativity, and innovation into a\n plenitude of collections. From staple items to distinctive\n accessories.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 9),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          "12days ago",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff272727)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                      "assets/images/girl_profile_2.png"),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "Alex Morgan",
                                    style: GoogleFonts.gabarito(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff8E6CEF),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff8E6CEF),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff8E6CEF),
                                  ),
                                  Icon(Icons.star,color: Colors.grey,),
                                  Icon(Icons.star,color: Colors.grey,),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Gucci transcribes its heritage, creativity, and innovation into a\n plenitude of collections. From staple items to distinctive\n accessories.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 9),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          "12days ago",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(12.0),
            color: Colors.white, // Optional: Add a background color
            child: ElevatedButton(
              onPressed: () {
                // Handle "Add to Bag" button press(
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EmptyCartScreenView()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$148",
                      style: GoogleFonts.gabarito(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF)),
                    ),
                    Text(
                      "Add to Bag",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xffFFFFFF)),
                    ),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff8E6CEF),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //Size button function
  Widget _buildSizeButton(String label) {
    return TextButton(
      onPressed: () {
        setState(() {
          selectedButton = label; // Update the selected button
        });
      },
      style: TextButton.styleFrom(
        backgroundColor: selectedButton == label
            ? Color(0xff8E6CEF)
            : Colors.grey[300], // Change background color if selected
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: selectedButton == label
                  ? Colors.white
                  : Colors.black, // Change text color if selected
            ),
          ),
          if (selectedButton == label ||
              selectedButton != label) // Show a checkmark if selected
            SizedBox(width: 165),
          if (selectedButton == label )
            Icon(
              Icons.check,
              color: Colors.white,
              size: 20,
            ),
          if(selectedButton != label)
            Text("      ")
        ],
      ),
    );
  }

  //Colour button function
  Widget _buildColourButton(String label) {
    return TextButton(
      onPressed: () {
        setState(() {
          selectedButton = label; // Update the selected button
        });
      },
      style: TextButton.styleFrom(
        backgroundColor: selectedButton == label
            ? Color(0xff8E6CEF)
            : Colors.grey[300], // Change background color if selected
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: selectedButton == label
                  ? Colors.white
                  : Colors.black, // Change text color if selected
            ),
          ),
          if (selectedButton == label ||
              selectedButton != label) // Show a checkmark if selected
            SizedBox(width: 167),
          if (selectedButton == label)
            Icon(
              Icons.check,
              color: Colors.white,
              size: 16,
            ),
          if(selectedButton != label)
            Text("     ")
        ],
      ),
    );
  }
}
