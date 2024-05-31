import 'package:flutter/material.dart';
import 'package:vakyavahan/constants.dart';

class Heading1 extends StatelessWidget {
  final String text;
  const Heading1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 32),
      child: Text(
        text,
        style: const TextStyle(
          color: white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
