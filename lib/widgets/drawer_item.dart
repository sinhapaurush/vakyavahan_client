import 'package:flutter/material.dart';

class DrawerButtonCustom extends StatelessWidget {
  final String label;
  final IconData icon;
  const DrawerButtonCustom(
      {super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 20, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(icon),
          ),
          Text(label)
        ],
      ),
    );
  }
}
