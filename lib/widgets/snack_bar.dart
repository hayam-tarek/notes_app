import 'package:flutter/material.dart';
import 'package:notes_app/helper/constant.dart';

SnackBar customSnackBar({required String text}) {
  return SnackBar(
      backgroundColor: kMainColor,
      content: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ));
}
