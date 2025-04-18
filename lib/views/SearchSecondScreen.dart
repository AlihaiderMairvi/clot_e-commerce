import 'package:ecommerce_project/views/SearchThirdScreenScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchSecondScreeenView extends StatefulWidget {
  const SearchSecondScreeenView({super.key});

  @override
  State<SearchSecondScreeenView> createState() => _SearchSecondScreeenViewState();
}

class _SearchSecondScreeenViewState extends State<SearchSecondScreeenView> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
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
              suffixIcon: Image.asset("assets/images/cross_icon.png"),
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/search 1.png'),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sorry, we couldn't find any",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "matching result for your",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Search.",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchThirdScreenScreenView()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff8E6CEF),
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30)
                      ),
                      child: Text(
                        'Explore Categories',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFFFFFF)),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
