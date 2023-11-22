import 'package:flutter/material.dart';
import 'package:practice_section_3/gradien_container.dart';
import 'package:practice_section_3/styled_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
home: Scaffold(
 body: GradientContainer(
   const Color.fromARGB(200, 33, 5, 109),
   const Color.fromARGB(245, 68, 21, 149),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png', width: 300,),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: StyledText('Learn Flutter The Fun Way!'),
        ),
            OutlinedButton(onPressed: (){},
              style:  OutlinedButton.styleFrom(

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const StyledText('Start Quiz', fontSize: 12,))
          ],
        ),
      ),
    ),),);
  }
}


