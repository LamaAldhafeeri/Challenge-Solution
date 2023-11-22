import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key, this.fontSize = 24});
final String text ;
final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return  Text(text,
      style:  TextStyle(
        color:  Colors.white,
        fontSize: fontSize
      ),

    );
  }
}
