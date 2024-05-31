import 'package:flutter/material.dart';
import 'package:vakyavahan/constants.dart';

class MessageBox extends StatelessWidget {
  final String phone;
  final String message;
  final String timestamp;

  const MessageBox(
      {super.key,
      required this.phone,
      required this.message,
      required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: lightGrey,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(width: 1, color: white),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.phone,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(phone),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                message,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                alignment: FractionalOffset.bottomRight,
                child: Text(
                  timestamp,
                  style:
                      const TextStyle(color: Color(0XffDFDFDF), fontSize: 11),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
