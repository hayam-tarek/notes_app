import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/helper/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? listOfNotes;
  fetchAllNotes() async {
    // emit(NotesLoading());
    // try {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    listOfNotes = notesBox.values.toList();
    emit(NotesSuccess());
    // } catch (e) {
    //   emit(NotesFailure(errMessage: e.toString()));
    // }
  }
}
