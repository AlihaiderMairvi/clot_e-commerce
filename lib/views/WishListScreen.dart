import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistscreenView extends StatefulWidget {
  const WishlistscreenView({super.key});

  @override
  State<WishlistscreenView> createState() => _WishlistscreenViewState();
}

class _WishlistscreenViewState extends State<WishlistscreenView> {
  bool isFavourite1 = false;
  bool isFavourite2 = false;

  void _toggleFavourite1() {
    setState(() {
      isFavourite1 = !isFavourite1;
    });
  }

  void _toggleFavourite2() {
    setState(() {
      isFavourite2 = !isFavourite2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wishlist",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset("assets/images/arrow_back_icon.png"),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white70),
              child: ListTile(
                  leading: IconButton(
                      onPressed: _toggleFavourite1,
                      icon: Image.asset(
                        isFavourite1
                            ? "assets/images/fav_icon_red.png"
                            : "assets/images/fav_img.png",
                      )),
                  title: Text(
                    "My Favorite",
                    style: GoogleFonts.gabarito(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(
                    "12 Products",
                    style: GoogleFonts.gabarito(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black38),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios)),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white70),
            child: ListTile(
                leading: IconButton(
                    onPressed: _toggleFavourite2,
                    icon: Image.asset(
                      isFavourite2
                          ? "assets/images/fav_icon_red.png"
                          : "assets/images/fav_img.png",
                    )),
                title: Text(
                  "T-Shirts",
                  style: GoogleFonts.gabarito(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  "4 Products",
                  style: GoogleFonts.gabarito(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black38),
                ),
                trailing: Icon(Icons.arrow_forward_ios)),
          )
        ],
      ),
    );
  }
}
