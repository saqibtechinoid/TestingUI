// import 'package:flutter/material.dart';

// class CustomContainer extends StatelessWidget {
//   final double height;
//   final double? width;
//   final Color color;
//   final double borderRadius;
//   final Widget child;

//   const CustomContainer({
//     super.key,
//     this.height = 55,
//     this.width,
//     this.color = Colors.white,
//     this.borderRadius = 15.0,
//     this.child = const SizedBox(),
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: height,
//       width: width,
//       child: Container(
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(borderRadius),
//         ),
//         child: child,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

// Assuming CustomContainer and CustomText are in separate files as provided

// CustomContainer widget (as provided by you)
class CustomContainer extends StatelessWidget {
  final double height;
  final double? width;
  final Color color;
  final double borderRadius;
  final Widget child;

  const CustomContainer({
    super.key,
    this.height = 55,
    this.width,
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
        child: child,
      ),
    );
  }
}
