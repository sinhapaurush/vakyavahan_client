import 'package:flutter/material.dart';
import 'package:vakyavahan/functions/navigator.dart';

class Anchor extends StatelessWidget {
  final Widget child;
  final Widget href;
  const Anchor({Key? key, required this.child, required this.href})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: child,
      onTap: () => Routes(context).push(href),
    );
  }
}
