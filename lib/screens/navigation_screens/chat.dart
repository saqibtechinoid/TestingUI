import 'package:flutter/material.dart';
import 'package:testing/widgets/ListViewBuilder/appointment_list_view.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat Screen')),
      body: const TimelineListView(),
      // body: const Center(
      //   child: Text(
      //     'Chat Screen',
      //     style: TextStyle(fontSize: 24),
      //   ),
      // ),
    );
  }
}
