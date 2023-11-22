import 'package:flutter/material.dart';
import 'package:practice_section_3/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
final void Function() startQuiz;
  @override
  Widget build( context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300,),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: StyledText('Learn Flutter The Fun Way!'),
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style:  OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const StyledText('Start Quiz', fontSize: 12,))
        ],
      ),
    );
  }
}
