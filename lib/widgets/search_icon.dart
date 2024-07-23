import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search_rounded,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
