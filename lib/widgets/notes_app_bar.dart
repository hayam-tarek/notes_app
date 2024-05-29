import 'package:flutter/material.dart';
import 'package:notes_app/helper/constant.dart';
import 'package:notes_app/widgets/notes_text.dart';
import 'package:notes_app/widgets/search_icon.dart';

class NotesAppBar extends StatelessWidget {
  const NotesAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: SearchIcon(),
        ),
      ],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(75),
        ),
      ),
      backgroundColor: kMainColor,
      title: const Padding(
        padding: EdgeInsets.only(
          left: 15,
        ),
        child: NotesText(),
      ),
    );
  }
}
