import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final double borderRadius;
  final Widget child;

  const IconContainer({
    super.key,
    this.height = 55,
    this.width = 55,
    this.color = Colors.white,
    this.borderRadius = 15.0,
      this.child = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: child
      ),
    );
  }
}
