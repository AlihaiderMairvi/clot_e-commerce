import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchFirstScreenView extends StatefulWidget {
  SearchFirstScreenView({super.key});

  @override
  State<SearchFirstScreenView> createState() => _SearchFirstScreenViewState();
}

class _SearchFirstScreenViewState extends State<SearchFirstScreenView> {
  final List<Map<String, dynamic>> categories = [
    {"image": "assets/images/hood.png", "label": "Hoodies"},
    {"image": "assets/images/cloths.png", "label": "Shorts"},
    {"image": "assets/images/shoes.png", "label": "Shoes"},
    {"image": "assets/images/bag.png", "label": "Bag"},
    {"image": "assets/images/glasses.png", "label": "Accessories"},
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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Shop by Categories",
                  style: GoogleFonts.gabarito(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Color(0xff272727),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, i) {
                    final category = categories[i];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Container(
                        width: 342,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Color(0xffF4F4F4),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(top: 12,left: 12),
                            child: Container(
                                width: 40,
                                height: 40,
                                child: Image.asset(category['image'])),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 2,left: 8),
                            child: Container(
                              width: 60,
                              height: 25,
                              child: Text(
                                category["label"],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xff272727),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: categories.length),
            )
          ],
        ),
      ),
    );
  }
}
