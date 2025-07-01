import 'package:flutter/material.dart';

// Enum to manage the active tab state
enum NavTab { home, schedule,add, chat, profile }

class CustomNavBar extends StatelessWidget {
  final NavTab currentTab;
  final ValueChanged<NavTab> onTabSelected;
  final VoidCallback onAddButtonPressed;

  const CustomNavBar({
    super.key,
    required this.currentTab,
    required this.onTabSelected,
    required this.onAddButtonPressed,
  });

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required NavTab tab,
    required bool isActive,
    required ValueChanged<NavTab> onTabSelected,
    required Color activeColor,
    required Color inactiveColor,
  }) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onTabSelected(tab),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: isActive ? activeColor : inactiveColor,
                  size: 26.0,
                ),
                const SizedBox(height: 2.0),
                Text(
                  label,
                  style: TextStyle(
                    color: isActive ? activeColor : inactiveColor,
                    fontSize: 12.0,
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryTeal = Color(0xFF20B2AA);
    const Color inactiveGrey = Colors.grey;

    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildNavItem(
            icon: Icons.home_outlined,
            label: 'Home',
            tab: NavTab.home,
            isActive: currentTab == NavTab.home,
            onTabSelected: onTabSelected,
            activeColor: primaryTeal,
            inactiveColor: inactiveGrey,
          ),
          _buildNavItem(
            icon: Icons.calendar_month_outlined,
            label: 'Schedule',
            tab: NavTab.schedule,
            isActive: currentTab == NavTab.schedule,
            onTabSelected: onTabSelected,
            activeColor: primaryTeal,
            inactiveColor: inactiveGrey,
          ),
          const Spacer(), 
          _buildNavItem(
            icon: Icons.chat_bubble_outline,
            label: 'Chat',
            tab: NavTab.chat,
            isActive: currentTab == NavTab.chat,
            onTabSelected: onTabSelected,
            activeColor: primaryTeal,
            inactiveColor: inactiveGrey,
          ),
          _buildNavItem(
            icon: Icons.person_outline,
            label: 'Profile',
            tab: NavTab.profile,
            isActive: currentTab == NavTab.profile,
            onTabSelected: onTabSelected,
            activeColor: primaryTeal,
            inactiveColor: inactiveGrey,
          ),
        ],
      ),
    );
  }
}
