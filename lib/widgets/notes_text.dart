import 'package:flutter/material.dart';

class NotesText extends StatelessWidget {
  const NotesText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Notes',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: 'RuslanDisplay',
        fontSize: 30,
      ),
    );
  }
}
