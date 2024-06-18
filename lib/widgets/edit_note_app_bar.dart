import 'package:flutter/material.dart';
import 'package:notes_app/helper/constant.dart';
import 'package:notes_app/widgets/save_icon.dart';

class EditNoteAppBar extends StatelessWidget {
  const EditNoteAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      backgroundColor: kMainColor,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: SaveIcon(),
        )
      ],
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
        ),
      ),
      title: const Text(
        'Edit Note',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
