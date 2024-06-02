import 'package:flutter/material.dart';
import 'package:vakyavahan/constants.dart';
import 'package:vakyavahan/screens/home.dart';

void main() {
  runApp(const VakyaVahan());
}

class VakyaVahan extends StatelessWidget {
  const VakyaVahan({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: lightGrey,
          onPrimary: white,
          secondary: bgGrey,
          onSecondary: white,
          error: Colors.red,
          onError: white,
          background: bgGrey,
          onBackground: white,
          surface: lightGrey,
          onSurface: white,
        ),
      ),
    );
  }
}
