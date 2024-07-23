import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_note_app_bar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({
    super.key,
  });
  static const String id = 'EditNoteView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: EditNoteAppBar(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomTextField(hintText: 'Title'),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
