import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.color,
    required this.fontWeight,
    required this.size,
  });

  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight),
    );
  }
}
