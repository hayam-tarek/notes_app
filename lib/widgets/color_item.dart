import 'package:flutter/material.dart';
import 'package:notes_app/helper/constant.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: 28,
        backgroundColor: kMainColor,
      ),
    );
  }
}
