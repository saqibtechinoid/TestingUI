import 'package:flutter/material.dart';

class CustomDropdownUI extends StatelessWidget {
  final String displayText;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const CustomDropdownUI({
    super.key,
    required this.displayText,
    this.leadingIcon = Icons.calendar_today_outlined,
    this.trailingIcon = Icons.keyboard_arrow_down,
    this.backgroundColor = const Color(0xFFF0F0F0),
    this.textColor = const Color(0xFF333333),
    this.iconColor = const Color(0xFF333333),
    this.borderRadius = 25.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(leadingIcon, color: iconColor, size: 20.0),
          const SizedBox(width: 8.0),

          Text(
            displayText,
            style: TextStyle(
              color: textColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 8.0),

          Icon(trailingIcon, color: iconColor, size: 20.0),
        ],
      ),
    );
  }
}
