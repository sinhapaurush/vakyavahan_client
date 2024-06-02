import 'package:url_launcher/url_launcher.dart';

Future<void> linking(String uri) async {
  Uri urlToLaunch = Uri.parse(uri);
  bool launched = await launchUrl(urlToLaunch);
  if (!launched) {
    throw Exception("Unable to launch URL $uri");
  }
}
