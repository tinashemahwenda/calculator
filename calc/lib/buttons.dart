import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  dynamic color;
  dynamic textColor;
  String buttonText;

  MyButton(this.color, this.buttonText, this.textColor);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: color,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
