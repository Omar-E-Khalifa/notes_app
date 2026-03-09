import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 16,
      title: Text(
        title,
        style: const TextStyle(fontSize: 28),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: const CustomSearchIcon(),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
