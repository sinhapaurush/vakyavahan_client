import 'package:flutter/material.dart';
import 'package:vakyavahan/constants.dart';
import 'package:vakyavahan/widgets/github.dart';
import 'package:vakyavahan/widgets/heading_one.dart';
import 'package:vakyavahan/widgets/layout.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Heading1(text: "About App"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                """VakyaVahan (वाक्य वाहन), which translates to "carrier of words" in Sanskrit, is a robust SMS API designed to streamline and elevate your mobile communication. VakyaVahan empowers you to send text messages with efficiency and purpose. One of the standout features of VakyaVahan is its commitment to transparency and security. This app is completely open source, with both the backend and frontend available for scrutiny and customization. This openness ensures that developers and users can trust and verify the application's functionality and security. Moreover, VakyaVahan takes privacy seriously. None of your messages are stored on the server; all SMS that you see in the app are stored on your device only. This means, developer of this project can not read or tweak your messages in any way. In addition to these features, VakyaVahan includes a unique inactivity safeguard. If the app does not connect to the server within 7 days, the client will automatically be disabled. This measure ensures saving resources for active accounts.""",
                style: TextStyle(height: 2),
              ),
            ),
            Heading1(text: "Source Code"),
            GithubButton(
              label: "Client",
              url: githubClient,
            ),
            GithubButton(
              label: "Server",
              url: githubServer,
            ),
          ],
        ),
      ),
    );
  }
}
