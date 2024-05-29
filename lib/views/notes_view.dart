import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: NotesAppBar(),
      ),
      body: ListView(
        children: const [],
      ),
    );
  }
}
