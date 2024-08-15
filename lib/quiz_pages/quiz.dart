import 'package:final_projem/data/questions.dart';
import 'package:final_projem/quiz_pages/questions_screen.dart';
import 'package:final_projem/quiz_pages/result.dart';
import 'package:final_projem/quiz_pages/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizBody(),
    );
  }
}

class QuizBody extends StatefulWidget {
  const QuizBody({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuizBodyState createState() => _QuizBodyState();
}

class _QuizBodyState extends State<QuizBody> {
  final List<String> selectedAnswers = [];
  final Map<String, int> housePoints = {
    'Gryffindor': 0,
    'Hufflepuff': 0,
    'Ravenclaw': 0,
    'Slytherin': 0,
  };
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String selectedAnswer, String house) {
    selectedAnswers.add(selectedAnswer);
    housePoints[house] = housePoints[house]! + 1;

    if (selectedAnswers.length >= questions.length) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultsScreen(
            selectedAnswers: selectedAnswers,
            housePoints: housePoints, // Pass housePoints data
          ),
        ),
      );
    } else {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

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
        child: screenWidget,
      ),
    );
  }
}
