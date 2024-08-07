import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search.dart';

class DrawerContent extends StatefulWidget {
  const DrawerContent({super.key});

  @override
  State<DrawerContent> createState() => _DrawerContentState();
}

class _DrawerContentState extends State<DrawerContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 75,
        ),
        SwitchListTile(
          title: const Text('Dark Mode'),
          value: AdaptiveTheme.of(context).mode.isDark,
          onChanged: (value) {
            if (value) {
              AdaptiveTheme.of(context).setDark();
            } else {
              AdaptiveTheme.of(context).setLight();
            }
          },
        ),
        ListTile(
          onTap: () {
            showSearch(context: context, delegate: CustomSearch());
          },
          title: const Text(
            'Search',
          ),
          trailing: const Icon(
            Icons.search,
          ),
        ),
      ],
    );
  }
}
