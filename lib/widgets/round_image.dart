import 'package:flutter/material.dart';

class RoundImage extends StatelessWidget {
  final String imagePath;
  final double size;
  final BoxFit fit;
  final Color? borderColor;
  final double borderWidth;

  const RoundImage({
    super.key,
    required this.imagePath,
    required this.size,
    this.fit = BoxFit.cover,
    this.borderColor,
    this.borderWidth = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: borderColor != null
            ? Border.all(
                color: borderColor!,
                width: borderWidth,
              )
            : null,
      ),
      child: ClipOval(
        child: Image.asset(
          imagePath,
          width: size,
          height: size,
          fit: fit,
        ),
      ),
    );
  }
}