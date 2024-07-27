import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/addNoteCubit/add_note_cubit.dart';
import 'package:notes_app/cubits/notesCubit/notes_cubit.dart';
import 'package:notes_app/helper/snack_bar.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            log('failure: ${state.message}');
            ScaffoldMessenger.of(context).showSnackBar(
              customSnackBar(text: state.message),
            );
          }
          if (state is AddNoteSuccess) {
            log('done');
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              customSnackBar(text: "The note was added successfully"),
            );
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
