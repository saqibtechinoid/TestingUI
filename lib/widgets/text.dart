import 'package:flutter/material.dart';

// class CustomText extends StatelessWidget {
//   final String text;
//   final double size;
//   final FontWeight? fontWeight;
//   final Color color;
//   final double wordSpacing;
//   final int? maxWords;

//   const CustomText({
//     super.key,
//     required this.text,
//     this.size = 28.0,
//     this.fontWeight,
//     this.wordSpacing = 0,
//     this.color = Colors.white,
//     this.maxWords,
//   });

//   String _limitWords(String input, int? maxWords) {
//     if (maxWords == null) return input;
//     final words = input.split(' ');
//     if (words.length <= maxWords) return input;
//     return words.take(maxWords).join(' ') + '...';
//   }

//   @override
//   Widget build(BuildContext context) {
//     final displayText = _limitWords(text, maxWords);
//     return Text(
//       text,
//       // displayText,
//       style: TextStyle(
//         color: color,
//         fontSize: size,
//         fontWeight: fontWeight,
//         fontFamily: 'Poppins',
//         wordSpacing: wordSpacing,
//       ),
//       // overflow: TextOverflow.fade,
//       overflow: TextOverflow.visible,
//       softWrap: true,
//       maxLines: null,
//     );
//   }
// }

// CustomText widget (modified to remove maxWords and ensure wrapping)
class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight? fontWeight;
  final Color color;
  final double wordSpacing;
  final int? maxLines; // Added maxLines property

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
      overflow: TextOverflow.fade, // Changed to fade
      softWrap: true, // Ensures text wraps within its bounds
      maxLines: maxLines, // Use the provided maxLines
    );
  }
}
