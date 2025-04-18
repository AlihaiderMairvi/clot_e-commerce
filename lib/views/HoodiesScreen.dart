import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoodiesScreenView extends StatefulWidget {
  HoodiesScreenView({super.key});

  @override
  State<HoodiesScreenView> createState() => _HoodiesScreenViewState();
}

class _HoodiesScreenViewState extends State<HoodiesScreenView> {
  final List<Map<String, dynamic>> hoodies = [
    {
      "image": "assets/images/hoodie_1.png",
      "isFavourite": false,
      "name": "Men's Fleece Pullover Hoo...",
      "price": "\$100.00"
    },
    {
      "image": "assets/images/hoodie_2.png",
      "isFavourite": false,
      "name": "Fleece Pullover Skate Hoo...",
      "price": "\$150.97"
    },
    {
      "image": "assets/images/hoodie_3.png",
      "isFavourite": false,
      "name": "Fleece Skate Hoodie",
      "price": "\$110.00"
    },
    {
      "image": "assets/images/hoodie_4.png",
      "isFavourite": false,
      "name": "Men's Ice-Dye Pullover Hoo...",
      "price": "\$128.97"
    },
    {
      "image": "assets/images/hoodie_1.png",
      "isFavourite": false,
      "name": "Men's Ice-Dye Pullover Hoo...",
      "price": "\$128.97"
    },
    {
      "image": "assets/images/hoodie_2.png",
      "isFavourite": false,
      "name": "Men's Ice-Dye Pullover Hoo...",
      "price": "\$128.97"
    },
  ];

  void _toggleFavourite(int index) {
    setState(() {
      hoodies[index]["isFavourite"] = !hoodies[index]["isFavourite"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Image.asset("assets/images/arrow_back_icon.png"),)
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "Hoodies (240)",
                    style: GoogleFonts.gabarito(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
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
                              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                              child: Image.asset(
                                hoodie["image"],
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 6,
                              child: GestureDetector(
                                onTap: () => _toggleFavourite(index),
                                child: Icon(
                                  hoodie["isFavourite"]
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  size: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  hoodie["name"],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 8,
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
}