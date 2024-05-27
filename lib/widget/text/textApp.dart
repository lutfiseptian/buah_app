import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  TextApp({
    required this.text,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Sport',
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
