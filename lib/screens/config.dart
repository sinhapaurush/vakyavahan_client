import 'package:flutter/material.dart';
import 'package:vakyavahan/widgets/layout.dart';

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

  String username = "";

  @override
  void initState(){
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
          Text("${username}"),
          TextField(
            controller: userNameController,
          ),
          MaterialButton(onPressed: () {
            setState(() {
              username = userNameController.text;
            });
          })
        ],
      ),
    );
  }
}
