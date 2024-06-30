import 'package:flutter/material.dart';
import 'package:vakyavahan/constants.dart';

class TextBox extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool? readOnly;
  final String? hint;
  final bool? secure;

  const TextBox({
    super.key,
    required this.controller,
    required this.label,
    this.hint,
    this.readOnly,
    this.secure,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Material(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1, color: white),
                color: lightGrey,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  obscureText: secure ?? false,
                  readOnly: readOnly ?? false,
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: hint ?? "",
                    border: InputBorder.none,
                    hintStyle: const TextStyle(fontWeight: FontWeight.normal),
                  ),
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    decoration: (readOnly ?? false)
                        ? TextDecoration.lineThrough
                        : null,
                    color: (readOnly ?? false)
                        ? const Color.fromARGB(255, 180, 180, 180)
                        : white,
                  ),
                  cursorColor: white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
