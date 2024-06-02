import 'package:flutter/material.dart';

class Routes {
  final BuildContext context;
  Routes(this.context);

  MaterialPageRoute _materialRoute(Widget target) {
    return MaterialPageRoute(builder: (BuildContext context) {
      return target;
    });
  }

  void push(Widget target) {
    Navigator.of(context).push(_materialRoute(target));
  }

  void pop() {
    Navigator.of(context).pop();
  }

  void replace(Widget target) {
    Navigator.of(context).pushReplacement(_materialRoute(target));
  }
}
