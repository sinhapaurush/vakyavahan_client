import 'package:flutter/material.dart';
import '../constants.dart';

class TextBox extends StatelessWidget {
  
  const TextBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 10,
      decoration: BoxDecoration(
          border: Border.all(color: white, width: 1), color: lightGrey),
    );
  }
}
