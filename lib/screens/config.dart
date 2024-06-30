import 'package:flutter/material.dart';
import 'package:vakyavahan/constants.dart';
import 'package:vakyavahan/widgets/button.dart';
import 'package:vakyavahan/widgets/layout.dart';
import 'package:vakyavahan/widgets/spacing.dart';
import 'package:vakyavahan/widgets/textbox.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(child: ConfigScreenState());
  }
}

class ConfigScreenState extends StatefulWidget {
  const ConfigScreenState({Key? key}) : super(key: key);
  @override
  State createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController orgNameController = TextEditingController();
  final TextEditingController authKeyController = TextEditingController();

  String username = "";

  @override
  void initState() {
    super.initState();
    userNameController.addListener(() {
      setState(() {
        username = userNameController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Spacing(height: 10),
          TextBox(
            controller: userNameController,
            label: "Name",
            hint: "Your Name",
          ),
          const Spacing(height: 10),
          TextBox(
            controller: orgNameController,
            label: "Organisation Name",
            hint: "eg: ABC Ltd.",
          ),
          const Spacing(height: 40),
          TextBox(
            controller: authKeyController,
            label: "Authentication Key",
            hint: "******",
            readOnly: true,
          ),
          PrimaryButton(
            text: "Save",
            ontap: () {
              debugPrint("Hi");
            },
          )
        ],
      ),
    );
  }
}
