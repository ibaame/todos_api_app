// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  int id;
  String title;
  bool completed;

  TodoScreen({required this.id, required this.title, required this.completed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('$id'),
            Text(title),
            Icon(completed ? Icons.done : Icons.error),
          ],
        ),
      ),
    );
  }
}
