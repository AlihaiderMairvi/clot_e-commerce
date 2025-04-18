import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFavouriteScreenView extends StatefulWidget {
  MyFavouriteScreenView({super.key});

  @override
  State<MyFavouriteScreenView> createState() => _MyFavouriteScreenViewState();
}

class _MyFavouriteScreenViewState extends State<MyFavouriteScreenView> {
  final List<Map<String, dynamic>> hoodies = [
    {
      "image": "assets/images/nike bag.png",
      "isFavourite": false,
      "name": "Men's Fleece Pullover Hoodie",
      "price": "\$100.00"
    },
    {
      "image": "assets/images/glasses_man.png",
      "isFavourite": false,
      "name": "Fleece Pullover Skate Hoodie",
      "price": "\$150.97"
    },
    {
      "image": "assets/images/orange_t-shirt.png",
      "isFavourite": false,
      "name": "Fleece Skate Hoodie",
      "price": "\$110.00"
    },
    {
      "image": "assets/images/skycolorshirt.png",
      "isFavourite": false,
      "name": "Men's Ice-Dye Pullover Hoodie",
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
        title: Text(
          "My Favourites (12)",
          style:
              GoogleFonts.gabarito(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        centerTitle: true,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Image.asset("assets/images/arrow_back_icon.png"),)
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Stack(
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
                                        ? "assets/images/fav_img.png"
                                        : "assets/images/fav_icon_red.png",
                                   width: 40,height: 40,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                hoodie["name"],
                                style: GoogleFonts.gabarito(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Color(0xff272727),
                                ),
                              ),
                              SizedBox(height: 4),
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
}
