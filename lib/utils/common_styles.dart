import 'package:flutter/material.dart';

TextStyle setDefaultStyle({
  String fontFamily,
  FontWeight fontWeight = FontWeight.normal,
  double letterSpacing = 1,
  FontStyle fontStyle = FontStyle.normal,
  double fontSize = 16,
  Color color = Colors.black,
}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    letterSpacing: letterSpacing,
    fontStyle: fontStyle,
    fontSize: fontSize,
    color: color,
  );
}
