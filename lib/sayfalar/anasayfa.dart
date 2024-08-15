import 'package:final_projem/araclar/buton.dart';
import 'package:final_projem/araclar/items.dart';
import 'package:final_projem/sayfalar/shopping_sayfasi.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 59, 21, 21),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 59, 21, 21),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/hogwarts_logo.png", width: 350, height: 350),
              Text(
                  "Dear Wizard of House '$displayName',\n    Welcome to Hogwarts Store!",
                  style: GoogleFonts.forum(
                      fontSize: 27,
                      fontWeight: FontWeight.w100,
                      color: const Color.fromARGB(255, 226, 183, 43))),
              Column(
                children: [
                  Buton(
                    butonText: "Shop",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ShoppingPage()));
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
