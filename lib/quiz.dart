import 'package:flutter/material.dart';
import 'package:practice_section_3/gradien_container.dart';
import 'package:practice_section_3/start_screen.dart';
import 'package:practice_section_3/questionScreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  void switchScreen(){
    activeScreen = const QuestionScreen();
    setState(() {
    });
  }
  @override
  void initState() {
    activeScreen =  StartScreen(switchScreen);
    super.initState();
  }

  @override
  Widget build( context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(200, 33, 5, 109),
          const Color.fromARGB(245, 68, 21, 149),
          child: activeScreen ?? StartScreen(switchScreen),
        ),
      ),
    );
  }
}
