import 'package:flutter/material.dart';
import 'package:testing/widgets/custom_Container.dart';
import 'package:testing/widgets/cutsom_Icon_Container.dart';
import 'package:testing/widgets/text.dart';

class ScreenComponent extends StatelessWidget {
  final Color backgroundcolor;
  final Color textColor;
  final String mainText;
  final String subText;
  final IconData icon;
  final Color iconColor;
  final double iconSize;

  const ScreenComponent({
    super.key,
    this.backgroundcolor = Colors.white,
    this.textColor = Colors.white,
    this.mainText = "",
    this.subText = "",
    this.icon = Icons.calendar_month_outlined,
    this.iconColor = Colors.white,
    this.iconSize = 30,
  });
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 87,
      // width: 180,
      color: backgroundcolor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: IconContainer(
                height: 40,
                width: 40,
                color: textColor,
                borderRadius: 30.0,
                child: Icon(icon, color: iconColor, size: iconSize),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: mainText,
                    size: 24,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                  CustomText(
                    text: subText,
                    size: 12,
                    fontWeight: FontWeight.w400,
                    color: textColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
