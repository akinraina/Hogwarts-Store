//import 'package:final_projem/araclar/buton.dart';
import 'package:final_projem/araclar/buton.dart';
import 'package:final_projem/araclar/items.dart';
import 'package:final_projem/araclar/mini_icons.dart';
import 'package:final_projem/araclar/products.dart';
//import 'package:final_projem/sayfalar/anasayfa.dart';
import 'package:final_projem/sayfalar/item_details.dart';
import 'package:final_projem/sayfalar/sale_page.dart';
//import 'package:final_projem/sayfalar/sale_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  void navigateItemDetails(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ItemDetails(
                  product: itemsList[index],
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 95, 57, 57),
        appBar: AppBar(
          centerTitle: true,

          //appBar Baslik
          title: Text("Hogwarts Store",
              style: GoogleFonts.forum(
                  fontSize: 35,
                  fontWeight: FontWeight.w100,
                  color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 59, 21, 21),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 40,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text("On Sale! ",
                        style: GoogleFonts.forum(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 226, 183, 43))),
                  ),
                  const Icon(
                    Icons.discount_outlined,
                    color: Color.fromARGB(255, 226, 183, 43),
                  ),
                ],
              ),
            ),

            // Discount banner
            Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 59, 21, 21),
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Image.asset("images/$displayName.png",
                            width: 150, height: 150)),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Text("Welcome to House $displayName !",
                                style: GoogleFonts.forum(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w100,
                                  color:
                                      const Color.fromARGB(255, 226, 183, 43),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                  "Check out your discounted $displayName House Gift Pack only for you!",
                                  style: GoogleFonts.forum(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white,
                                  )),
                            ),
                            Buton(
                                butonText: "Check it out!",
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SalePage(),
                                    ))),
                            const SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 20),

            //Best sellers title
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Text("Best Sellers ",
                      style: GoogleFonts.forum(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
                const Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 226, 183, 43),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 21),
              child: Row(
                children: [
                  SizedBox(
                      child: Text("Swipe left to see more ",
                          style: TextStyle(
                            color: Colors.grey,
                          ))),
                  Icon(
                    Icons.keyboard_double_arrow_left_outlined,
                    color: Colors.grey,
                  )
                ],
              ),
            ),

            //Best sellers list
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: itemsList.length,
                  itemBuilder: (context, index) => Products(
                        product: itemsList[index],
                        onTap: () => navigateItemDetails(index),
                      )),
            ),
            const SizedBox(height: 15),

            //alt ikonlar
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MiniIcons(
                    iconImage: "images/magic_wand.png", iconName: "Wands"),
                MiniIcons(iconImage: "images/cloak.png", iconName: "Cloaks"),
                MiniIcons(iconImage: "images/sweets.png", iconName: "Sweets"),
                MiniIcons(iconImage: "images/hat.png", iconName: "Gift Sets"),
              ],
            ),
          ],
        ));
  }
}
