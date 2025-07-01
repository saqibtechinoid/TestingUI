import 'package:flutter/material.dart';
import 'package:testing/screens/navigation_screens/chat.dart';
import 'package:testing/screens/home.dart';
import 'package:testing/screens/navigation_screens/new_item.dart';
import 'package:testing/screens/navigation_screens/profile.dart';
import 'package:testing/screens/navigation_screens/schedule.dart';
import 'package:testing/widgets/custom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  NavTab _currentTab = NavTab.home;

  final List<Widget> _pages = [
    MyHomePage(),
    ScheduleScreen(),
    NewItemScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  void _selectTab(NavTab tab) {
    setState(() {
      _currentTab = tab;
    });
  }

  void _onAddButtonPressed() {
    print("Add button pressed!");
    _selectTab(NavTab.add);
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryTeal = Color(0xFF20B2AA);
    const Color fabOuterBorderColor = Color(0xFFB3E3DF);

    return Scaffold(
      body: _pages.asMap().containsKey(_currentTab.index)
          ? _pages[_currentTab.index]
          : const Center(child: Text("Page not found")),

      floatingActionButton: Transform.translate(
        offset: Offset(
          0.0, // dx
          24.0, // dy
        ),
        child: Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 6.0),
          ),
          child: Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: fabOuterBorderColor,
                width: 6.0,
              ), // Inner border
            ),
            child: FloatingActionButton(
              onPressed: _onAddButtonPressed,
              backgroundColor: primaryTeal,
              shape: const CircleBorder(),
              elevation: 0.0,
              child: const Icon(
                Icons.medical_services_outlined,
                color: Colors.white,
                size: 26.0,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: CustomNavBar(
        currentTab: _currentTab,
        onTabSelected: _selectTab,
        onAddButtonPressed: _onAddButtonPressed,
      ),
    );
  }
}
