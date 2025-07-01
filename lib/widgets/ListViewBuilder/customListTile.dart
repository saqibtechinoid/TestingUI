import 'package:flutter/material.dart';

class CustomAppointmentListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String location;
  final String profileAssetImage;
  final IconData? overlayIcon;
  final Color backgroundColor;
  final Color verticalIndicatorColor;
  final Color titleColor;
  final Color subtitleColor;
  final Color locationColor;
  final Color iconColor;
  final Color overlayIconColor;
  final double borderRadius;
  final EdgeInsetsGeometry contentPadding;
  final double profileImageBorderRadius;
  final double overlayIconBackgroundBorderRadius;

  const CustomAppointmentListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.location,
    required this.profileAssetImage,
    this.overlayIcon,
    this.backgroundColor = const Color(0xFFE8F0FE),
    this.verticalIndicatorColor = const Color(0xFF42A5F5),
    this.titleColor = const Color(0xFF333333),
    this.subtitleColor = const Color(0xFF666666),
    this.locationColor = const Color(0xFF888888),
    this.iconColor = const Color(0xFF888888),
    this.overlayIconColor = Colors.blue,
    this.borderRadius = 10.0,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 12.0,
    ),
    this.profileImageBorderRadius = 12.0,
    this.overlayIconBackgroundBorderRadius = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 3.0,
              decoration: BoxDecoration(
                color: verticalIndicatorColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadius),
                  bottomLeft: Radius.circular(borderRadius),
                ),
              ),
            ),
            const SizedBox(width: 12.0),
            Expanded(
              child: Padding(
                padding: contentPadding,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              color: titleColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            subtitle,
                            style: TextStyle(
                              color: subtitleColor,
                              fontSize: 14.0,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: iconColor,
                                size: 16.0,
                              ),
                              const SizedBox(width: 4.0),
                              Expanded(
                                child: Text(
                                  location,
                                  style: TextStyle(
                                    color: locationColor,
                                    fontSize: 12.0,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    _buildProfileImageWithOverlayIcon(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileImageWithOverlayIcon() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(profileImageBorderRadius),
          child: Image.asset(
            profileAssetImage,
            width: 60.0,
            height: 60.0,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(profileImageBorderRadius),
                ),
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.grey.shade400,
                ),
              );
            },
          ),
        ),
        if (overlayIcon != null)
          Positioned(
            left: 17.0,
            bottom: -10.0,
            child: Container(
              width: 28.0,
              height: 28.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  overlayIconBackgroundBorderRadius,
                ),
                border: Border.all(color: Colors.white, width: 2.0),
              ),
              child: Center(
                child: Icon(overlayIcon, color: overlayIconColor, size: 20.0),
              ),
            ),
          ),
      ],
    );
  }
}
