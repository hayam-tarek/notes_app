import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const Divider(
          color: Colors.transparent,
          height: 10,
        );
      },
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const NoteItem();
      },
    );
  }
}
