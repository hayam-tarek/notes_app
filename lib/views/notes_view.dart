import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: NotesAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 5,
          left: 16,
          right: 16,
        ),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.transparent,
              height: 10,
            );
          },
          physics: const BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return const NoteItem();
          },
        ),
      ),
    );
  }
}
