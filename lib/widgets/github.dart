import 'package:flutter/material.dart';
import 'package:vakyavahan/constants.dart';
import '../functions/launchurl.dart';

class GithubButton extends StatelessWidget {
  final String label;
  final String url;
  const GithubButton({super.key, required this.label, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: InkWell(
        onTap: ()=>linking(url),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: white),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            gradient: const LinearGradient(
                colors: [
                  Color(0xff3C3C45),
                  Color(0xff2E2E2E),
                ],
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("</>"),
                ),
                Text("$appName $label"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
