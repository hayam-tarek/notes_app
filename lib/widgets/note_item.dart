import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notesCubit/notes_cubit.dart';
import 'package:notes_app/helper/snack_bar.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, EditNoteView.id, arguments: note);
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditNoteView(note: note),
            ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          // color: Colors.grey.shade200,
          color: Color(note.color),
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                note.title,
                style: const TextStyle(
                  // color: Colors.white,
                  fontSize: 25,
                ),
              ),
              subtitle: Text(
                note.content,
                style: const TextStyle(
                  // color: Colors.white60,
                  fontSize: 20,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  ScaffoldMessenger.of(context).showSnackBar(customSnackBar(
                      text: "The note was deleted successfully"));
                },
                icon: const Icon(
                  Icons.delete_rounded,
                  // color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  note.createdAt,
                  style: const TextStyle(
                    // color: Colors.white60,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
