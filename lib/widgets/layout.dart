import 'package:flutter/material.dart';
import 'package:vakyavahan/constants.dart';
import 'package:vakyavahan/functions/maths.dart';
import './drawer_item.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  const AppScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: vw(context, 90),
        decoration: const BoxDecoration(color: drawerColor),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                DrawerButtonCustom(
                  icon: Icons.home,
                  label: "Home",
                ),
                DrawerButtonCustom(
                  icon: Icons.info,
                  label: "About",
                ),
                DrawerButtonCustom(
                    icon: Icons.build, label: "API Configurations"),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Column(
          children: [
            Image(
              image: AssetImage("assets/logo.png"),
              height: 25,
            ),
            Text(
              appName,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: child,
    );
  }
}
