import 'package:flutter/material.dart';

class MText extends StatelessWidget {
  const MText({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16,
  });
  final String text;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: fontWeight, fontSize: fontSize),
    );
  }
}
