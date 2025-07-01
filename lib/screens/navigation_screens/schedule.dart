import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule Screen'),
      ),
      body: const Center(
        child: Text(
          'Schedule Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}