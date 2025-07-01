import 'package:flutter/material.dart';
import 'package:testing/widgets/ListViewBuilder/customListTile.dart';
import 'package:testing/widgets/ListViewBuilder/timeline_entry.dart'; // This is your TimelineEntry widget

class TimelineListView extends StatelessWidget {
  const TimelineListView({super.key});

  final List<TimelineEntry> timelineEntries = const [
    TimelineEntry(
      startTimeLabel: '7 AM',
      endTimeLabel: '8 AM',
      appointmentTile: CustomAppointmentListTile(
        title: 'Adam Mills',
        subtitle: 'Mental Health Support',
        location: 'Street 124, Wall Street',
        profileAssetImage: 'assets/profile.jpg',
        backgroundColor: Color(0xFFE7F8F1),
        verticalIndicatorColor: Color(0xFF1BB76D),
        overlayIcon: Icons.psychology_outlined,
      ),
    ),
    TimelineEntry(
      startTimeLabel: '8:30 AM',
      endTimeLabel: '9:30 AM',
      appointmentTile: CustomAppointmentListTile(
        title: 'Emma Johnson',
        subtitle: 'Career Coaching',
        location: 'Downtown Office',
        profileAssetImage: 'assets/profile.jpg',
        backgroundColor: Color(0xFFE3F2FD),
        verticalIndicatorColor: Color(0xFF42A5F5),
        overlayIcon: Icons.work_outline,
      ),
    ),
    TimelineEntry(
      startTimeLabel: '10 AM',
      endTimeLabel: '11 AM',
      appointmentTile: CustomAppointmentListTile(
        title: 'Michael Lee',
        subtitle: 'Health Checkup',
        location: 'Health Plaza, NY',
        profileAssetImage: 'assets/profile.jpg',
        backgroundColor: Color(0xFFFFF3E0),
        verticalIndicatorColor: Color(0xFFFF9800),
        overlayIcon: Icons.local_hospital,
      ),
    ),
    TimelineEntry(
      startTimeLabel: '11 AM',
      endTimeLabel: '12 PM',
      appointmentTile: CustomAppointmentListTile(
        title: 'Muhammad Saqib',
        subtitle: 'Mental Health Checkup',
        location: 'Health Plaza, USA',
        profileAssetImage: 'assets/profile.jpg',
        backgroundColor: Color(0xFFE7F8F1),
        verticalIndicatorColor: Color(0xFF1BB76D),
        overlayIcon: Icons.local_hospital,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      itemCount: timelineEntries.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: timelineEntries[index],
        );
      },
    );
  }
}
