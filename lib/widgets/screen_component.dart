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
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: CustomContainer(
        // width: 190,
        height: 90,
        color: backgroundcolor,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: IconContainer(
                height: 45,
                width: 45,
                color: textColor,
                borderRadius: 30.0,
                child: Icon(icon, color: iconColor, size: iconSize),
              ),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: mainText,
                  size: 22,
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
          ],
        ),
      ),
    );
  }
}
