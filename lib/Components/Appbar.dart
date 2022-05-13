import 'package:etournament_fishing/style.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      actions: [
        IconButton(icon: const Icon(Icons.person_pin), onPressed: () {}),
      ],
      leading: IconButton(
          icon: const Icon(Icons.menu_open_rounded), onPressed: () {}),
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(60.0);
  }
}
