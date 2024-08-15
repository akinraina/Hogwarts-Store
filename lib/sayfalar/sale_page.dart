import 'package:final_projem/araclar/items.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SalePage extends StatefulWidget {
  const SalePage({
    super.key,
  });

  @override
  State<SalePage> createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
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
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset("images/$displayName.png", height: 300),
                ),

                const Text(
                  "_________________________________",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color.fromARGB(255, 226, 183, 43)),
                ),
                const SizedBox(height: 10),

                //item foto

                Text("$displayName Gift Pack",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.forum(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),

                //item description

                const Padding(
                  padding: EdgeInsets.all(13),
                  child: Text(
                    "Each Hogwarts Gift Trunk measures approximately 45cm x 30cm x 23cm and features a carry handle and clasp. The Hogwarts school crest is printed on the top of the trunk and features custom initials on the side. Trunk materials consist of 60% plywood, 20% PU, 10% metal, and 10% glues/lacquers. This decorative collectable is not designed for travel use, or to carry overly heavy items. Please note this trunk is not a toy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 209, 209, 209),
                    ),
                  ),
                ),

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
                          Text("\$ 120",
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
