import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ServicesHandler {
  Future<dynamic> getService({String? urlSuffix,
    Map<String, String>? headers}) async {
    var request = http.Request('GET', Uri.parse('https://api.github.com/users/Flutter/repos'));
    http.StreamedResponse response = await request.send();
    var responsee = await http.Response.fromStream(response);
    if (responsee.statusCode == 200) {
     // print(responsee)
      return json.decode(responsee.body);

    }
    else {
      print(response.reasonPhrase);
    }
  }




}