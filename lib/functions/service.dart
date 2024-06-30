import "package:http/http.dart" as http;
import "package:vakyavahan/constants.dart";
import "dart:convert";

// Future<http.Response> createAlbum(String title) {
//   return http.post(
//     Uri.parse('https://jsonplaceholder.typicode.com/albums'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       'title': title,
//     }),
//   );
// }

class ServerInterface {
  Future<bool> createProfile(
    String username,
    String organization,
    String deviceId,
    String password,
  ) async {
    try {
      Uri endPointURI = Uri.parse("$uriRoot/new-client");
      http.Response result =
          await http.post(endPointURI, headers: <String, String>{
        "Content-Type": "application/x-www-form-urlencoded"
      }, body: <String, String>{
        "name": username,
        "organization": organization,
        "deviceId": deviceId,
        "password": password,
      });
      if (result.statusCode == 200) {
        return true;
      }
    } catch (e) {
      print(e);
    }
    return false;
  }
}
