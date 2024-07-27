import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notesCubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> listOfNotes =
            BlocProvider.of<NotesCubit>(context).listOfNotes ?? [];

        return ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.transparent,
              height: 10,
            );
          },
          physics: const BouncingScrollPhysics(),
          itemCount: listOfNotes.length,
          itemBuilder: (BuildContext context, int index) {
            return const NoteItem();
          },
        );
      },
    );
  }
}
