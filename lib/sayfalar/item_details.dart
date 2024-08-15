import 'package:final_projem/araclar/items.dart';
import 'package:final_projem/sayfalar/buy_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemDetails extends StatefulWidget {
  final Items product;
  const ItemDetails({super.key, required this.product});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  int itemSayisi = 0;

  void eksilt() {
    setState(() {
      if (itemSayisi > 0) {
        itemSayisi--;
      }
    });
  }

  void arttir() {
    setState(() {
      itemSayisi++;
    });
  }

  void buy() {
    if (itemSayisi > 0) {
      final satinAl = context.read<SatinAl>();
      satinAl.buy(widget.product, itemSayisi);

      showDialog(
        context: context,
        builder: (context) =>
            const AlertDialog(content: Text("Successfully bought!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 95, 57, 57),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 59, 21, 21),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                Image.asset(widget.product.imagePath, height: 350),

                const Text(
                  "_________________________________",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color.fromARGB(255, 226, 183, 43)),
                ),
                const SizedBox(height: 15),

                //item foto

                Text(widget.product.name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.forum(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),

                //item description

                Padding(
                  padding: const EdgeInsets.all(13),
                  child: Text(
                    widget.product.des,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 209, 209, 209),
                    ),
                  ),
                ),
                const SizedBox(height: 21),

                //alt fiyat bar

                Container(
                  color: const Color.fromARGB(255, 59, 21, 21),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$ ${widget.product.price}",
                              style: GoogleFonts.forum(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      const Color.fromARGB(255, 236, 198, 71))),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: eksilt,
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Color.fromARGB(255, 236, 198, 71),
                                  )),
                              Text(
                                itemSayisi.toString(),
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 236, 198, 71),
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  onPressed: arttir,
                                  icon: const Icon(Icons.add,
                                      color:
                                          Color.fromARGB(255, 236, 198, 71))),
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: buy,
                          style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 95, 57, 57),
                          )),
                          child: const Text(
                            "Buy Instant",
                            style: TextStyle(
                                color: Color.fromARGB(255, 236, 198, 71)),
                          ))
                    ],
                  ),
                )
              ],
            ))
          ],
        ));
  }
}
