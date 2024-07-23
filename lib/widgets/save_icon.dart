import 'package:flutter/material.dart';

class SaveIcon extends StatelessWidget {
  const SaveIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.check,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
