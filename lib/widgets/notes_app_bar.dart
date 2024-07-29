import 'package:flutter/material.dart';
import 'package:notes_app/helper/constant.dart';
import 'package:notes_app/widgets/custom_icon.dart';
import 'package:notes_app/widgets/notes_text.dart';

class NotesAppBar extends StatelessWidget {
  const NotesAppBar({
    super.key,
    required this.scaffoldKey,
  });
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 10,
          ),
          child: CustomIcon(
            onPressed: () {
              scaffoldKey.currentState!.openEndDrawer();
            },
            icon: Icons.menu,
          ),
        ),
      ],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
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
