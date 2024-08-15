import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/house.png',
            width: 300,
            height: 300,
          ),
          const SizedBox(height: 60),
          Text(
            'The Sorting Ceremony',
            style: GoogleFonts.forum(
              color: const Color.fromARGB(255, 226, 183, 43),
              fontSize: 28,
            ),
          ),
          Text(
            'Remember to answer truthfully.',
            style: GoogleFonts.forum(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 226, 183, 43),
            ),
            child: Text(
              'Start!',
              style: GoogleFonts.playfairDisplay(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
