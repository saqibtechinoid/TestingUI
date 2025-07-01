import 'package:flutter/material.dart';
import 'package:testing/widgets/custom_Container.dart';
import 'package:testing/widgets/custom_dropdown_ui.dart';
import 'package:testing/widgets/cutsom_Icon_Container.dart';
import 'package:testing/widgets/round_image.dart';
import 'package:testing/widgets/screen_component.dart';
import 'package:testing/widgets/text.dart';
import 'package:testing/widgets/ListViewBuilder/appointment_list_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
              child: Container(
                height: 280,
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0xFF09A998)),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 80.0,
                        left: 20.0,
                        right: 20.0,
                        bottom: 30.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  RoundImage(
                                    imagePath: 'assets/profile.jpg',
                                    size: 40,
                                  ),
                                  SizedBox(width: 10),

                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        // top: screenHeight * 0.081,
                                        // left: screenWidth * 0.17,
                                        text: "Welcome, Adam",
                                        size: 22,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        wordSpacing: -3.0,
                                      ),
                                      CustomText(
                                        // top: screenHeight * 0.111,
                                        // left: screenWidth * 0.17,
                                        text: "Welcome to Care Solution",
                                        size: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white,
                                        wordSpacing: -2,
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              IconContainer(
                                height: 40,
                                width: 40,
                                color: Colors.white,
                                borderRadius: 15.0,
                                child: Icon(
                                  Icons.notifications_outlined,
                                  color: Color(0xFF09A998),
                                  size: 25,
                                ),
                              ),
                            ],
                          ),

                          // SizedBox(height: 20),
                          CustomContainer(
                            height: 80,
                            width: double.infinity,
                            color: Colors.white,
                            borderRadius: 40.0,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Wrap the Row containing the icon and text with Expanded
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Color(0xFF09A998),
                                          size: 35,
                                        ),
                                        SizedBox(width: 5),
                                        // Wrap the Column with Expanded to allow text to take available space
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomText(
                                                text: "Current Location",
                                                size: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              ),
                                              CustomText(
                                                text:
                                                    "Street 124, Wall Street, Manhattan, New York, NY 10005, United States of America Street 124, Wall Street, Manhattan, New York, NY 10005, United States of America",
                                                size: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                                maxLines:
                                                    2, // Set a maxLines for fading effect
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomText(
                                    text: "Change",
                                    size: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF09A998),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // CustomContainer(
                          //   height: 80,
                          //   width: double.infinity,
                          //   color: Colors.white,
                          //   borderRadius: 40.0,
                          //   child: Padding(
                          //     padding: const EdgeInsets.only(
                          //       left: 20.0,
                          //       right: 20.0,
                          //     ),
                          //     child: Row(
                          //       mainAxisAlignment:
                          //           MainAxisAlignment.spaceBetween,
                          //       children: [
                          //         Row(
                          //           children: [
                          //             Icon(
                          //               Icons.location_on_outlined,
                          //               color: Color(0xFF09A998),
                          //               size: 35,
                          //             ),
                          //             SizedBox(width: 5),
                          //             Column(
                          //               mainAxisAlignment:
                          //                   MainAxisAlignment.center,
                          //               crossAxisAlignment:
                          //                   CrossAxisAlignment.start,
                          //               children: [
                          //                 CustomText(
                          //                   text: "Current Location",
                          //                   size: 16,
                          //                   fontWeight: FontWeight.w500,
                          //                   color: Colors.black,
                          //                 ),
                          //                 CustomText(
                          //                   text:
                          //                       "Street 124, Wall Street, Manhattan, New York, NY 10005, United States of America",
                          //                   size: 16,
                          //                   fontWeight: FontWeight.w400,
                          //                   color: Colors.black,
                          //                   // maxWords: 4,
                          //                 ),
                          //               ],
                          //             ),
                          //           ],
                          //         ),
                          //         CustomText(
                          //           text: "Change",
                          //           size: 16,
                          //           fontWeight: FontWeight.w400,
                          //           color: Color(0xFF09A998),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: CustomContainer(
                      // width: 180,
                      height: 190,
                      color: Color(0xFF09A998),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconContainer(
                            height: 60,
                            width: 60,
                            color: Colors.white,
                            borderRadius: 30.0,
                            child: Image.asset(
                              'assets/icon.png',
                              width: 20,
                              height: 20,
                            ),
                          ),

                          // SizedBox(height: 10),
                          Column(
                            children: [
                              CustomText(
                                text: "12",
                                size: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                              CustomText(
                                text: "Service Completed",
                                size: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Column(
                    children: [
                      ScreenComponent(
                        backgroundcolor: Color(0xFF4E8CF3),
                        textColor: Colors.white,
                        mainText: "06",
                        subText: "Upcoming Meetings",
                        icon: Icons.calendar_today,
                        iconSize: 25,
                        iconColor: Color(0xFF4E8CF3),
                      ),
                      SizedBox(height: 10),
                      ScreenComponent(
                        backgroundcolor: Color(0xFFFCAA72),
                        textColor: Colors.white,
                        mainText: "02",
                        subText: "Pending Request",
                        icon: Icons.access_time_outlined,
                        iconSize: 25,
                        iconColor: Color(0xFFFCAA72),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 20),
            //       child: CustomContainer(
            //         width: 180,
            //         height: 190,
            //         color: Color(0xFF09A998),
            //         child: Padding(
            //           padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               IconContainer(
            //                 height: 60,
            //                 width: 60,
            //                 color: Colors.white,
            //                 borderRadius: 30.0,
            //                 child: Image.asset(
            //                   'assets/icon.png',
            //                   width: 20,
            //                   height: 20,
            //                 ),
            //               ),
            //               SizedBox(height: 10),
            //               CustomText(
            //                 text: "12",
            //                 size: 22,
            //                 fontWeight: FontWeight.w700,
            //                 color: Colors.white,
            //               ),
            //               CustomText(
            //                 text: "Service Completed",
            //                 size: 14,
            //                 fontWeight: FontWeight.w400,
            //                 color: Colors.white,
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),

            //     Column(
            //       children: [
            //         ScreenComponent(
            //           backgroundcolor: Color(0xFF4E8CF3),
            //           textColor: Colors.white,
            //           mainText: "06",
            //           subText: "Upcoming Meetings",
            //           icon: Icons.calendar_today,
            //           iconSize: 25,
            //           iconColor: Color(0xFF4E8CF3),
            //         ),
            //         SizedBox(height: 10),
            //         ScreenComponent(
            //           backgroundcolor: Color(0xFFFCAA72),
            //           textColor: Colors.white,
            //           mainText: "02",
            //           subText: "Pending Request",
            //           icon: Icons.access_time_outlined,
            //           iconSize: 25,
            //           iconColor: Color(0xFFFCAA72),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming Meetings",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  // SizedBox(width: 25),
                  Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF09A998),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFF09A998),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tuesday, 18 Feb",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF828799),
                    ),
                  ),
                  CustomDropdownUI(
                    displayText: "Feb, 2024",
                    leadingIcon: Icons.calendar_today_outlined,
                    trailingIcon: Icons.keyboard_arrow_down,
                    backgroundColor: Color(0xFFF7F7F7),
                    textColor: Color(0xFF333333),
                    iconColor: Color(0xFF333333),
                    borderRadius: 23.0,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                  ),
                ],
              ),
            ),

            TimelineListView(),
          ],
        ),
      ),
    );
  }
}
