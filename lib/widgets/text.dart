import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight? fontWeight;
  final Color color;
  final double wordSpacing;
  final int? maxLines;

  const CustomText({
    super.key,
    required this.text,
    this.size = 28.0,
    this.fontWeight,
    this.wordSpacing = 0,
    this.color = Colors.white,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: 'Poppins',
        wordSpacing: wordSpacing,
      ),
      overflow: TextOverflow.fade,
      softWrap: true,
      maxLines: maxLines,
    );
  }
}
