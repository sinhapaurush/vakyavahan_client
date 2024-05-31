import 'package:flutter/material.dart';
import 'package:vakyavahan/constants.dart';
import 'package:vakyavahan/widgets/heading_one.dart';
import 'package:vakyavahan/widgets/layout.dart';
import 'package:vakyavahan/widgets/message.dart';

void main() {
  runApp(const VakyaVahan());
}

ThemeData appThemeData = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: appBarColor,
    onPrimary: white,
    secondary: bgGrey,
    onSecondary: white,
    error: Colors.red,
    onError: white,
    background: bgGrey,
    onBackground: white,
    surface: Color(0xff393939),
    onSurface: Colors.white,
  ),
);

class VakyaVahan extends StatelessWidget {
  const VakyaVahan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: appThemeData,
      home: const AppScaffold(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Heading1(text: "Sent Messages"),
            MessageBox(
              message: "Your OTP for creating new account is 19833",
              phone: "987504321",
              timestamp: "May 31, 2024 13:21",
            ),
            MessageBox(
              message: "Your OTP for creating new account is 19833",
              phone: "987504321",
              timestamp: "May 31, 2024 13:21",
            ),
          ],
        ),
      ),
    );
  }
}
