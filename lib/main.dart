import 'package:final_projem/quiz_pages/quiz.dart';
import 'package:final_projem/quiz_pages/result.dart';
import 'package:final_projem/sayfalar/buy_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => SatinAl(),
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sorting Hat Quiz',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/results') {
          final args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) {
              return ResultsScreen(
                selectedAnswers: args['selectedAnswers'],
                housePoints: const {}, // Empty map as a placeholder
              );
            },
          );
        }
        return MaterialPageRoute(
          builder: (context) {
            return const Quiz();
          },
        );
      },
    );
  }
}
