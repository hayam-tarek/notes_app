import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_card.dart';

class NoteCardsListView extends StatelessWidget {
  const NoteCardsListView({
    super.key,
    required this.listOfNotes,
  });

  final List<NoteModel>? listOfNotes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listOfNotes!.length,
      itemBuilder: (context, index) {
        return NoteCard(
          note: listOfNotes![index],
        );
      },
    );
  }
}
