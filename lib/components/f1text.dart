import 'package:flutter/material.dart';

class F1Text extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final TextOverflow? overflow;
  final int? maxLines;
  final FontWeight? fontWeight;

  const F1Text(
    this.text, {
    super.key,
    this.fontSize = 30.0,
    this.color = Colors.white,
    this.overflow,
    this.maxLines,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: 'formula-bold',
      ),
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
