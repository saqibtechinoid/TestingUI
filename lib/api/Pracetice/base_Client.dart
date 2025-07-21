import 'dart:convert';
import 'package:http/http.dart' as http;

const String baseUrl = "https://jsonplaceholder.typicode.com/";

class BaseClient {
  var client = http.Client();
  String? authToken;

  //Get
  Future<dynamic> get(String api) async {
    var url = Uri.parse(baseUrl + api);
    var _headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      if (authToken != null) "authorization": "Bearer $authToken",
      "api_key_here": "XXXXXXXXXXXXXXXXXXXXXXX",
    };

    var response = await client.get(url, headers: _headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      print("Error: ${response.statusCode}");
      return null;
    }
  }

  //Post
  Future<dynamic> post(String api, dynamic object) async {
    var url = Uri.parse(baseUrl + api);
    var _payload = jsonEncode(object);

    var _headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "authorization": "Bearer XXXXXXXXXXXXXXXXXXXXX",
      "api_key_here": "XXXXXXXXXXXXXXXXXXXXXXX",
    };

    var response = await client.post(url, body: _payload, headers: _headers);
    if (response.statusCode == 201) {
      return response.body;
    } else {
      print("Error: ${response.statusCode}");
      return null;
    }
  }

  //Put
  Future<dynamic> put(String api ,dynamic object) async {
    var url = Uri.parse(baseUrl + api);
    var _payload = jsonEncode(object);

    var _headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "authorization": "Bearer XXXXXXXXXXXXXXXXXXXXX",
      "api_key_here": "XXXXXXXXXXXXXXXXXXXXXXX",
    };

    var response = await client.put(url, body: _payload, headers: _headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      print("Error: ${response.statusCode}");
      return null;
    }
  }

  //Delete
  Future<dynamic> delete(String api) async {
    var url = Uri.parse(baseUrl + api);
    var _headers = {
      "authorization": "Bearer XXXXXXXXXXXXXXXXXXXXX",
      "api_key_here": "XXXXXXXXXXXXXXXXXXXXXXX",
    };

    var response = await client.delete(url, headers: _headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      print("Error: ${response.statusCode}");
      return null;
    }
  }
}
