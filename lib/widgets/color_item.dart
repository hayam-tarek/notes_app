import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 33,
            backgroundColor: color,
            child: CircleAvatar(
              radius: 26,
              backgroundColor: color,
              child: const Icon(
                Icons.check,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        : CircleAvatar(
            radius: 26,
            backgroundColor: color,
          );
  }
}
