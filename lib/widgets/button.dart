import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final void Function() ontap;
  const PrimaryButton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: InkWell(
        onTap: ontap,
        child: Ink(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 9, 107, 97),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
