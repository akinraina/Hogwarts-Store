import 'package:flutter/material.dart';

class Buton extends StatelessWidget {
  final String butonText;
  final void Function() onTap;

  const Buton({super.key, required this.butonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
          Color.fromARGB(255, 95, 57, 57),
        )),
        child: Column(
          children: [
            Text(
              butonText,
              style: const TextStyle(color: Color.fromARGB(255, 226, 183, 43)),
            ),
            const Icon(
              Icons.arrow_right_alt_outlined,
              color: Color.fromARGB(255, 226, 183, 43),
            )
          ],
        ));
  }
}
