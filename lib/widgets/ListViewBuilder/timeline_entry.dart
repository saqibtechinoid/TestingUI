import 'package:flutter/material.dart';
import 'package:testing/widgets/ListViewBuilder/customListTile.dart';

class TimelineEntry extends StatelessWidget {
  final String startTimeLabel;
  final String? endTimeLabel;
  final CustomAppointmentListTile appointmentTile;
  final Color timeLabelColor;
  final double timeLabelFontSize;
  final double timeLabelSpacing;
  final double timeLabelWidth;

  const TimelineEntry({
    super.key,
    required this.startTimeLabel,
    this.endTimeLabel,
    required this.appointmentTile,
    this.timeLabelColor = Colors.grey,
    this.timeLabelFontSize = 12.0,
    this.timeLabelSpacing = 8.0,
    this.timeLabelWidth = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: timeLabelWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  startTimeLabel,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: timeLabelColor,
                    fontSize: timeLabelFontSize,
                  ),
                ),
                if (endTimeLabel != null)
                  Text(
                    endTimeLabel!,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: timeLabelColor,
                      fontSize: timeLabelFontSize,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(width: timeLabelSpacing),
          Expanded(child: appointmentTile),
        ],
      ),
    );
  }
}
