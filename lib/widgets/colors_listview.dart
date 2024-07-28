import 'package:flutter/material.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ColorItem(),
          ColorItem(),
          ColorItem(),
          ColorItem(),
          ColorItem(),
          ColorItem(),
          ColorItem(),
        ],
      ),
    );
  }
}
