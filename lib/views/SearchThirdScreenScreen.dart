import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchThirdScreenScreenView extends StatefulWidget {
  SearchThirdScreenScreenView({super.key});

  @override
  State<SearchThirdScreenScreenView> createState() =>
      _SearchThirdScreenScreenViewState();
}

class _SearchThirdScreenScreenViewState
    extends State<SearchThirdScreenScreenView> {
  String? selectedValue;
  String? selectedButton;
  final List<String> price = [
    "200",
    "300",
    "400",
    "500",
    "600",
    "700",
  ];
  String? selectedSortValue;
  final List<String> sortBy = [
    "Name",
    "Colour",
  ];
  String? selectedgenderValue;
  final List<String> gender = [
    "Male",
    "Female",
  ];

  final List<Map<String, dynamic>> hoodies = [
    {
      "image": "assets/images/search_img_1.png",
      "isFavourite": false,
      "name": "Club Fleece Mens Jacket",
      "price": "\$56.97"
    },
    {
      "image": "assets/images/search_img_2.png",
      "isFavourite": false,
      "name": "Skate Jacket",
      "price": "\$150.97"
    },
    {
      "image": "assets/images/search_img_3.png",
      "isFavourite": false,
      "name": "Therma Fit Puffer Jacket",
      "price": "\$280.00"
    },
    {
      "image": "assets/images/search_img_4.png",
      "isFavourite": false,
      "name": "Men's Workwear Jacket",
      "price": "\$128.97"
    },
  ];

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

  // Filtered list for search results
  List<String> filteredItems = [];

  // Controller for the search bar
  final TextEditingController _searchController = TextEditingController();

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
      hoodies[index]["isFavourite"] = !hoodies[index]["isFavourite"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Image.asset("assets/images/arrow_back_icon.png"),),
        title: Container(
          height: 40,
          width: 293,
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: "Search ",
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.black54,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                  borderSide: BorderSide.none
              ),
              prefixIcon: Image.asset("assets/images/search_icon.png"),
              suffixIcon: IconButton(onPressed: (){
                _searchController.clear();
              }, icon: Image.asset("assets/images/cross_icon.png"),),
              filled: true,
              fillColor: Color(0xFFF4F4F4),
            ),
            onChanged: _filterItems, // Call the filter function
          ),
        ),
        titleSpacing: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width:70,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xff8E6CEF),
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Image.asset("assets/images/Vector.png"),),
                          Text("2",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                        ],
                      ),
                    ),
                     SizedBox(
                      width: 15,
                    ),
                    //On Sale
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(

                        child: ElevatedButton.icon(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              //clear button
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  "Clear",
                                                  style: GoogleFonts.gabarito(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 16),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 75,
                                              ),
                                              Text(
                                                "Deals",
                                                style: GoogleFonts.gabarito(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 24),
                                              ),
                                              const SizedBox(
                                                width: 75,
                                              ),
                                              //cross IconButton
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  icon: Image.asset("assets/images/cross_icon.png")
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
                                                _buildOnsaleButton('On sale'),
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
                                                child: _buildFreeshippingButton(
                                                    'Free Shipping'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          label: Text(
                            "On Sale",
                            style: GoogleFonts.gabarito(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xff272727),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    //price
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            //clear button
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                "Clear",
                                                style: GoogleFonts.gabarito(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 75,
                                            ),
                                            Text(
                                              "Price",
                                              style: GoogleFonts.gabarito(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24),
                                            ),
                                            const SizedBox(
                                              width: 75,
                                            ),
                                            //cross IconButton
                                            IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: Image.asset("assets/images/cross_icon.png")
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
                                              child: _buildPriceButton('Max'),
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
                                              child: _buildPriceButton('Min'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                        label: Text(
                          "Price",
                          style: GoogleFonts.gabarito(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff8E6CEF)),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    //sort by
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (context) {
                                return Container(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width,
                                  child: FractionallySizedBox(
                                    heightFactor: 0.5,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                //clear button
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    "Clear",
                                                    style: GoogleFonts.gabarito(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 73,
                                                ),
                                                Text(
                                                  "Sort by",
                                                  style: GoogleFonts.gabarito(
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 24),
                                                ),
                                                const SizedBox(
                                                  width: 60,
                                                ),
                                                //cross IconButton
                                                IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    icon: Image.asset("assets/images/cross_icon.png")
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
                                                  _buildSortByRecomendedButton(
                                                      'Recommended'),
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
                                                  child: _buildSortByNewestButton(
                                                      'Newest'),
                                                ),
                                              ],
                                            ),
                                          ), SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                TextButton(
                                                  onPressed: () {},
                                                  child: _buildSortByLowestButton(
                                                      'Lowest - Highest Price'),
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
                                                  child: _buildSortByHighestButton(
                                                      'Highest - Lowest Price'),
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
                        icon: Icon(Icons.keyboard_arrow_down),
                        label: Text(
                          "Sort by",
                          style: GoogleFonts.gabarito(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff272727),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    //Gender
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            //clear button
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                "Clear",
                                                style: GoogleFonts.gabarito(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 60,
                                            ),
                                            Text(
                                              "Gender",
                                              style: GoogleFonts.gabarito(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24),
                                            ),
                                            const SizedBox(
                                              width: 60,
                                            ),
                                            //cross IconButton
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                icon: Image.asset("assets/images/cross_icon.png")
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
                                              child: _buildGenderMaleButton(
                                                  'Male'),
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
                                              child: _buildGenderFemaleMaleButton(
                                                  'Female'),
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
                                              child: _buildGenderKidsButton(
                                                  'Kids'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        icon: Icon(Icons.keyboard_arrow_down,color: Color(0xffFFFFFF),),
                        label: Text(
                          "Gender",
                          style: GoogleFonts.gabarito(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff8E6CEF)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "53 Results Found",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff272727),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.60,
                ),
                itemCount: hoodies.length,
                itemBuilder: (context, index) {
                  final hoodie = hoodies[index];
                  return Card(
                    elevation: 0,
                    color: Color(0xffF4F4F4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10)),
                              child: Image.asset(
                                hoodie["image"],
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 2,
                              right: 2,
                              child: GestureDetector(
                                onTap: () => _toggleFavourite(index),
                                child: Image.asset(
                                  hoodie["isFavourite"]
                                      ? "assets/images/fav_icon_red.png"
                                      : "assets/images/fav_img.png",
                                  width: 40,height: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8,left: 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                hoodie["name"],
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Color(0xff272727),
                                ),
                              ),
                              SizedBox(height: 0),
                              Text(
                                hoodie["price"],
                                style: GoogleFonts.gabarito(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xff272727),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Onsale button
  Widget _buildOnsaleButton(String label) {
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
              color: selectedButton == label
                  ? Colors.white
                  : Colors.black, // Change text color if selected
            ),
          ),
          if (selectedButton == label ||
              selectedButton != label) // Show a checkmark if selected
            SizedBox(width: 145),
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

//Freeshipping
  Widget _buildFreeshippingButton(String label) {
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
              color: selectedButton == label
                  ? Colors.white
                  : Colors.black, // Change text color if selected
            ),
          ),
          if (selectedButton == label ||
              selectedButton != label) // Show a checkmark if selected
            SizedBox(width: 100),
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

//Price button
  Widget _buildPriceButton(String label) {
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
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              color: selectedButton == label
                  ? Colors.white
                  : Colors.black, // Change text color if selected
            ),
          ),
          if (selectedButton == label ||
              selectedButton != label) // Show a checkmark if selected
            SizedBox(width: 150),
          if (selectedButton == label)
            Icon(
              Icons.check,
              color: Colors.white,
              size: 16,
            ),
          if(selectedButton != label)
            Text("    ")
        ],
      ),
    );
  }

  //Gender Male Button
  Widget _buildGenderMaleButton(String label) {
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
              color: selectedButton == label
                  ? Colors.white
                  : Colors.black, // Change text color if selected
            ),
          ),
          if (selectedButton == label ||
              selectedButton != label) // Show a checkmark if selected
            SizedBox(width: 160),
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

  //Gender Female Button
  Widget _buildGenderFemaleMaleButton(String label) {
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
              color: selectedButton == label
                  ? Colors.white
                  : Colors.black, // Change text color if selected
            ),
          ),
          if (selectedButton == label ||
              selectedButton != label) // Show a checkmark if selected
            SizedBox(width: 145),
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

  //Gender Kids Button
  Widget _buildGenderKidsButton(String label) {
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
              color: selectedButton == label
                  ? Colors.white
                  : Colors.black, // Change text color if selected
            ),
          ),
          if (selectedButton == label ||
              selectedButton != label) // Show a checkmark if selected
            SizedBox(width: 170),
          if (selectedButton == label)
            Icon(
              Icons.check,
              color: Colors.white,
              size: 16,
            ),
          if(selectedButton != label)
            Text("    ")
        ],
      ),
    );
  }

  //Recommended Button
  Widget _buildSortByRecomendedButton(String label) {
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
              color: selectedButton == label
                  ? Colors.white
                  : Colors.black, // Change text color if selected
            ),
          ),
          if (selectedButton == label ||
              selectedButton != label) // Show a checkmark if selected
            SizedBox(width: 90),
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

  //Newest
  Widget _buildSortByNewestButton(String label) {
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
              color: selectedButton == label
                  ? Colors.white
                  : Colors.black, // Change text color if selected
            ),
          ),
          if (selectedButton == label ||
              selectedButton != label) // Show a checkmark if selected
            SizedBox(width: 145),
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

  //Lowest
  Widget _buildSortByLowestButton(String label) {
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
              color: selectedButton == label
                  ? Colors.white
                  : Colors.black, // Change text color if selected
            ),
          ),
          if (selectedButton == label ||
              selectedButton != label) // Show a checkmark if selected
            SizedBox(width: 40),
          if (selectedButton == label)
            Icon(
              Icons.check,
              color: Colors.white,
              size: 16,
            ),
          if(selectedButton != label)
            Text("    ")
        ],
      ),
    );
  }

//Highest
  Widget _buildSortByHighestButton(String label) {
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
              color: selectedButton == label
                  ? Colors.white
                  : Colors.black, // Change text color if selected
            ),
          ),
          if (selectedButton == label ||
              selectedButton != label) // Show a checkmark if selected
            SizedBox(width: 40),
          if (selectedButton == label)
            Icon(
              Icons.check,
              color: Colors.white,
              size: 16,
            ),
          if(selectedButton != label)
            Text("    ")
        ],
      ),
    );
  }
}
