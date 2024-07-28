import 'package:flutter/material.dart';
import 'package:notes_app/helper/constant.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.onPressed,
    required this.title,
    required this.icon,
  });
  final void Function()? onPressed;
  final String title;
  final IconData icon;

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
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CustomIcon(
            icon: icon,
            onPressed: onPressed,
          ),
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
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
