import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notesCubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_note_color_listview.dart';
import 'package:notes_app/widgets/snack_bar.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({
    super.key,
    required this.note,
  });
  static const String id = 'EditNoteView';
  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title;
  String? content;
  @override
  Widget build(BuildContext context) {
    // NoteModel note = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: CustomAppBar(
          title: 'Edit Note',
          icon: Icons.check,
          onPressed: () async {
            widget.note.title = title ?? widget.note.title;
            widget.note.content = content ?? widget.note.content;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            ScaffoldMessenger.of(context).showSnackBar(
              customSnackBar(text: "Successfully modified"),
            );
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomTextFormField(
              onChanged: (value) {
                title = value;
              },
              initialValue: widget.note.title,
              hintText: 'Title',
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              onChanged: (value) {
                content = value;
              },
              initialValue: widget.note.content,
              hintText: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 70,
              child: EditNoteColorListView(
                note: widget.note,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
