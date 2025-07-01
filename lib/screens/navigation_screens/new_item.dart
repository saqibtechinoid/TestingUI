import 'package:flutter/material.dart';

class NewItemScreen extends StatelessWidget {
  const NewItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Item Screen',),
      ),
      body: const Center(
        child: Text(
          'Add New Item Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}