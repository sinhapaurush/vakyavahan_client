import 'package:device_info/device_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vakyavahan/functions/service.dart';
import 'package:vakyavahan/screens/home.dart';
import 'package:vakyavahan/widgets/popup.dart';
import 'package:vakyavahan/widgets/spacing.dart';
import 'package:vakyavahan/widgets/textbox.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Profile"),
      ),
      body: SignUpScreenStateFul(),
    );
  }
}

class SignUpScreenStateFul extends StatefulWidget {
  const SignUpScreenStateFul({super.key});
  @override
  State createState() {
    return SignUpScreen_();
  }
}

class SignUpScreen_ extends State {
  TextEditingController clientName = TextEditingController();
  TextEditingController orgName = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  void saveUser() async {
    if (clientName.value.text.length > 1 &&
        orgName.value.text != "" &&
        pass.value.text.length > 8 &&
        confirmPassword.value.text == pass.value.text) {
      // final DeviceInfoPlugin deviceInfoInstance = DeviceInfoPlugin();
      // AndroidDeviceInfo androidInstance = await deviceInfoInstance.androidInfo;
      // final String deviceID = androidInstance.androidId;
      bool serverResponse = await ServerInterface().createProfile(
        clientName.value.text,
        orgName.value.text,
        "#456364t5g54",
        pass.value.text,
      );

      if (serverResponse == true) {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
          return const HomeScreen();
        }));
      } else {
        alert(context, "Error", "Please try again later");
      }
    } else {
      alert(context, "Invalid Form",
          "Please enter correct info, and make sure that your password is long enough");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextBox(
          controller: clientName,
          label: "Client Name",
          hint: "Full Name",
        ),
        const Spacing(height: 10),
        TextBox(
          controller: orgName,
          label: "Organization Name",
          hint: "Organisation name trading as",
        ),
        const Spacing(height: 10),
        TextBox(
          controller: pass,
          label: "Password",
          hint: "Create a password",
        ),
        const Spacing(height: 10),
        TextBox(
          controller: confirmPassword,
          label: "Confirm Password",
          secure: true,
          hint: "Confirm your password",
        ),
        const Spacing(height: 10),
        InkWell(
          onTap: () => saveUser(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.teal, borderRadius: BorderRadius.circular(15)),
            child: Text("Done"),
          ),
        ),
      ],
    );
  }
}
