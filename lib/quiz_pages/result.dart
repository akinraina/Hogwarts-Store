import 'package:final_projem/araclar/buton.dart';
import 'package:final_projem/araclar/items.dart';
import 'package:final_projem/quiz_pages/quiz.dart';
import 'package:final_projem/sayfalar/anasayfa.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> selectedAnswers;
  final Map<String, int> housePoints;

  const ResultsScreen(
      {super.key, required this.selectedAnswers, required this.housePoints});

  String getHouseAssignment() {
    var maxPoints = 0;
    var houseAssignment = '';
    housePoints.forEach((house, points) {
      if (points > maxPoints) {
        maxPoints = points;
        houseAssignment = house;
      }
    });
    return houseAssignment;
  }

  String getHouseImage(String house) {
    switch (house) {
      case 'Gryffindor':
        displayName = "Gryffindor";
        return 'images/gry_logo.png';
      case 'Hufflepuff':
        displayName = "Hufflepuff";
        return 'images/huf_logo.png';
      case 'Ravenclaw':
        displayName = "Ravenclaw";
        return 'images/rav_logo.png';
      case 'Slytherin':
        displayName = "Slytherin";
        return 'images/sly_logo.png';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final house = getHouseAssignment();

    final houseImage = getHouseImage(house);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 95, 57, 57),
              Color.fromARGB(255, 59, 21, 21)
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                houseImage,
                width: 300,
                height: 300,
              ),
              Text(
                'Congratulations!',
                style: GoogleFonts.forum(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'You have been sorted into:',
                style: GoogleFonts.forum(
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                house,
                style: GoogleFonts.forum(
                  color: const Color.fromARGB(255, 226, 183, 43),
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Quiz(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 226, 183, 43),
                ),
                child: Text(
                  'Restart Quiz',
                  style: GoogleFonts.forum(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Buton(
                butonText: "Let's Go",
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnaSayfa(),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
