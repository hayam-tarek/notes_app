import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_note_app_bar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static const String id = 'EditNoteView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: EditNoteAppBar(),
      ),
    );
  }
}
