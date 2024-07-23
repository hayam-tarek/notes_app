import 'package:flutter/material.dart';
import 'package:notes_app/helper/constant.dart';
import 'package:notes_app/widgets/add_note_sheet.dart';
import 'package:notes_app/widgets/notes_app_bar.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({
    super.key,
  });
  static const String id = 'NotesView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kMainColor,
        child: const Icon(
          Icons.add_rounded,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            context: context,
            builder: (context) {
              return const AddNoteSheet();
            },
          );
        },
      ),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: NotesAppBar(),
      ),
      body: const Padding(
        padding: EdgeInsets.only(
          top: 5,
          left: 16,
          right: 16,
          bottom: 5,
        ),
        child: NotesListView(),
      ),
    );
  }
}
