import 'package:ecommerce_project/views/AboutYourSelf.dart';
import 'package:ecommerce_project/views/CreateAccount.dart';
import 'package:ecommerce_project/views/ForgotPassword.dart';
import 'package:ecommerce_project/views/HomePage.dart';
import 'package:ecommerce_project/views/LoginEmail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CategoryScreen.dart';
import 'HoodiesScreen.dart';

class FrameView extends StatefulWidget {
  const FrameView({super.key});

  @override
  State<FrameView> createState() => _FrameViewState();
}

class _FrameViewState extends State<FrameView> {
  String? selectedValue;
  final List<String> gender = ["Men", "Women"];

  // Mock data for search functionality
  final List<String> items = [
    "T-Shirt",
    "Sneakers",
    "Smartphone",
    "Laptop",
    "Watch",
    "Headphones",
    "Backpack",
  ];
  final List<Map<String, dynamic>> categories = [
    {"image": "assets/images/hood.png", "label": "Hoodies"},
    {"image": "assets/images/cloths.png", "label": "Shorts"},
    {"image": "assets/images/shoes.png", "label": "Shoes"},
    {"image": "assets/images/bag.png", "label": "Bag"},
    {"image": "assets/images/glasses.png", "label": "Accessories"},
  ];
  final List<Map<String, dynamic>> topSellings = [
    {
      "image": "assets/images/mens_jacket.png",
      "isFavourite": false,
      "name": "Men's Harrington Jacket",
      "price": "\$148.00"
    },
    {
      "image": "assets/images/men's_sleeper.png",
      "isFavourite": false,
      "name": "Max Cirro Men's Slides",
      "price": "\$55.00"
    },
    {
      "image": "assets/images/mens_jacket.png",
      "isFavourite": false,
      "name": "Men's Harrington Jacket",
      "price": "\$148.00"
    },
    {
      "image": "assets/images/men's_sleeper.png",
      "isFavourite": false,
      "name": "Max Cirro Men's Slides",
      "price": "\$55.00"
    },
    {
      "image": "assets/images/men's_sleeper.png",
      "isFavourite": false,
      "name": "Max Cirro Men's Slides",
      "price": "\$55.00"
    },
  ];
final List<Map<String, dynamic>> NewInCollections = [
    {
      "image": "assets/images/men's_jacket_2.png",
      "isFavourite": false,
      "name": "Men's Jacket",
      "price": "\$59.99"
    },
    {
      "image": "assets/images/men's_jacket_3.png",
      "isFavourite": false,
      "name": "Men's Slides",
      "price": "\$29.99"
    },
    {
      "image": "assets/images/men's_jacket_2.png",
      "isFavourite": false,
      "name": "Men's Jacket",
      "price": "\$59.99"
    },
    {
      "image": "assets/images/men's_jacket_3.png",
      "isFavourite": false,
      "name": "Men's Slides",
      "price": "\$29.99"
    },
    {
      "image": "assets/images/men's_jacket_2.png",
      "isFavourite": false,
      "name": "Men's Jacket",
      "price": "\$59.99"
    },
  ];

  // Filtered list for search results
  List<String> filteredItems = [];

  // Controller for the search bar
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize filtered list with all items
    filteredItems = items;
  }

  // Function to filter items based on search query
  void _filterItems(String query) {
    setState(() {
      filteredItems = items
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void _toggleFavourite(int index) {
    setState(() {
      topSellings[index]["isFavourite"] = !topSellings[index]["isFavourite"];
    });
  }
  void _toggleNewInFavourite(int index) {
    setState(() {
      NewInCollections[index]["isFavourite"] = !NewInCollections[index]["isFavourite"];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              // Row with images and dropdown
              Container(
                width: 342,
                height: 50,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      child: Column(
                        children: [
                          Image.asset('assets/images/Frame account image.png'),
                        ],
                      ),
                    ),
                    //const SizedBox(width: 95),
                    Container(
                      width: 134,
                      height: 50,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2,right: 14,left: 14),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffF4F4F4),
                                borderRadius: BorderRadius.circular(100)
                              ),
                              child: DropdownButton<String>(
                                value: selectedValue,
                                underline: Container(),
                                hint: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 44,
                                        height: 16,
                                        child: Text(
                                          "Gender",
                                          style: GoogleFonts.gabarito(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 11,
                                            color: Color(0xff272727),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedValue = newValue; // Update the selected value
                                  });
                                },
                                items: gender.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            width:44,
                                              height: 16,
                                              child: Text(value)),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                                dropdownColor: Color(0xFFF4F4F4),
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: Color(0xff272727),
                                ),
                                icon: Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color(0xff272727), // Icon color
                                  ),
                                ),
                                iconSize: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //const SizedBox(width: 95),
                    Container(
                      width: 40,
                      height: 40,
                      child: Column(
                        children: [
                          Image.asset("assets/images/Frame rightside image.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // Search Bar
              Container(
                width: 342,
                height: 50,
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: "Search ",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      borderSide: BorderSide.none
                    ),
                    prefixIcon: Image.asset("assets/images/search_icon.png"),
                    filled: true,
                    fillColor: Color(0xFFF4F4F4),
                  ),
                  onChanged: _filterItems, // Call the filter function
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Categories",
                          style: GoogleFonts.gabarito(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xff272727),
                          ),
                        ),
                        const SizedBox(
                          width: 125,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryscreenView()));
                            },
                            child: Text(
                              'See All',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff272727),
                              ),
                            )),
                      ],
                    ),

                    const SizedBox(height: 16),
                    // Horizontal list of categories
                    SizedBox(
                      height: 100, // Adjust height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          final category = categories[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Column(
                              children: [
                                Container(
                                  width: 56,
                                  height: 56,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF4F4F4),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: Image.asset(
                                    category["image"],
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  category["label"],
                                  style: GoogleFonts.gabarito(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff272727),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Top Selling",
                          style: GoogleFonts.gabarito(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xff272727),
                          ),
                        ),
                        const SizedBox(
                          width: 125,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HoodiesScreenView()));
                            },
                            child: Text(
                              'See All',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff272727),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 300, // Adjust height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: topSellings.length,
                        itemBuilder: (context, index) {
                          final item = topSellings[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffF4F4F4),
                              ),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 150, // Adjust width as needed
                                        height: 230,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage(item["image"]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 2,
                                        right: 2,
                                        child: GestureDetector(
                                          onTap: () => _toggleFavourite(index),
                                          child: Image.asset(
                                            item["isFavourite"]
                                                ? "assets/images/fav_icon_red.png"
                                                : "assets/images/fav_img.png",
                                            width: 40,height: 40,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item["name"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color(0xff272727),
                                          ),
                                        ),
                                        Text(
                                          item["price"],
                                          style: GoogleFonts.gabarito(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: Color(0xff272727),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "New In",
                          style: GoogleFonts.gabarito(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xff8E6CEF),
                          ),
                        ),
                        const SizedBox(
                          width: 165,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'See All',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff272727),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 300, // Adjust height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: NewInCollections.length,
                        itemBuilder: (context, index) {
                          final item = NewInCollections[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffF4F4F4),
                              ),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 150, // Adjust width as needed
                                        height: 230,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage(item["image"]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 2,
                                        right: 2,
                                        child: GestureDetector(
                                          onTap: () => _toggleNewInFavourite(index),
                                          child: Image.asset(
                                            item["isFavourite"]
                                                ? "assets/images/fav_icon_red.png"
                                                : "assets/images/fav_img.png",
                                            width: 40,height: 40,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    item["name"],
                                    style: GoogleFonts.gabarito(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xff272727),
                                    ),
                                  ),
                                  //SizedBox(height: 10,),
                                  Text(
                                    item["price"],
                                    style: GoogleFonts.gabarito(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xff272727),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
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
  }
}
