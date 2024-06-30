import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertBoxCustom extends StatelessWidget {
  final String title;
  final String content;
  final List<CupertinoDialogAction> actionSheet;

  const AlertBoxCustom(
      {super.key,
      required this.title,
      required this.content,
      required this.actionSheet});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      content: Text(
        content,
        style: const TextStyle(color: Colors.black),
      ),
      actions: actionSheet,
    );
  }
}

Future<void> alert(BuildContext context, String title, String message,
    [List<CupertinoDialogAction>? actions]) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) => AlertBoxCustom(
      title: title,
      content: message,
      actionSheet: actions ??
          [
            CupertinoDialogAction(
              child: InkWell(
                child: const Text(
                  "Ok",
                  style: TextStyle(color: Colors.teal),
                ),
                onTap: () => Navigator.of(context).pop(),
              ),
            )
          ],
    ),
  );
}
