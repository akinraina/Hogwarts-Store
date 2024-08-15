import 'package:final_projem/araclar/items.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Products extends StatelessWidget {
  final Items product;
  final void Function()? onTap;

  const Products({super.key, required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 59, 21, 21),
              borderRadius: BorderRadius.circular(20)),
          margin: const EdgeInsets.only(left: 2),
          child: Column(
            children: [
              // Ürünler
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                    fit: BoxFit.fitHeight,
                    product.imagePath,
                    height: 180,
                    width: 140),
              ),
              Text(product.name,
                  style: GoogleFonts.forum(
                      fontSize: 17,
                      fontWeight: FontWeight.w100,
                      color: Colors.white)),
              SizedBox(
                width: 100,
                child: Row(
                  children: [
                    Text("\$ ${product.price}",
                        style: GoogleFonts.forum(
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                            color: const Color.fromARGB(255, 226, 183, 43))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
