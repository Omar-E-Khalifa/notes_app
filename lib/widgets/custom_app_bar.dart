import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      required this.icon,
      required this.titleSize});
  final String title;
  final IconData? icon;
  final double titleSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 16,
      title: Text(
        title,
        style: TextStyle(fontSize: titleSize),
      ),
      actions: [
        if (icon != null)
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CustomAppbarIcon(
              icon: icon!, //I'm stuck here
            ),
          )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
