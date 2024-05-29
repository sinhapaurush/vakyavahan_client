import 'package:flutter/material.dart';

void main() {
  runApp(VakyaVahan());
}

class VakyaVahan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("HELLO WORLD"),
        ),
      ),
    );
  }
}
