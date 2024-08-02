import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notesCubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_cards_list_view.dart';

class CustomSearch extends SearchDelegate {
  List<NoteModel>? listOfNotes = [];
  List<NoteModel> filterList = [];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(
          Icons.delete,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(
        Icons.close,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (filterList.isNotEmpty) {
      return BlocConsumer<NotesCubit, NotesState>(
        listener: (context, state) {
          listOfNotes = BlocProvider.of<NotesCubit>(context)
              .listOfNotes
              ?.reversed
              .toList();
          filterList = listOfNotes!
              .where((notes) => notes.title.contains(query))
              .toList();
        },
        builder: (context, state) {
          return NoteCardsListView(
            listOfNotes: filterList,
          );
        },
      );
    } else {
      return const Center(
        child: Text('No Notes There'),
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    listOfNotes =
        BlocProvider.of<NotesCubit>(context).listOfNotes?.reversed.toList();

    return BlocConsumer<NotesCubit, NotesState>(
      listener: (context, state) {
        listOfNotes =
            BlocProvider.of<NotesCubit>(context).listOfNotes?.reversed.toList();
      },
      builder: (context, state) {
        if (query == '') {
          return NoteCardsListView(
            listOfNotes: listOfNotes,
          );
        } else {
          filterList = listOfNotes!
              .where((notes) => notes.title.contains(query))
              .toList();
          return NoteCardsListView(
            listOfNotes: filterList,
          );
        }
      },
    );
  }
}
