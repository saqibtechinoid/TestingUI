import 'dart:convert';
import 'package:http/http.dart' as http;

class BaseClient {
  final _client = http.Client();
  final String baseUrl = "https://jsonplaceholder.typicode.com/";

  Future<dynamic> request({
    required String api,
    required String method,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
    String? authToken,


  }) async {
    final url = Uri.parse(baseUrl + api);
    final defaultHeaders = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      if (authToken != null) "authorization": "Bearer $authToken",
      // "api_key_here": "XXXXXXXXXXXXXXXXXXXXXXX",
    };

    final requestHeaders = {...defaultHeaders, ...?headers};
    final payload = body != null ? jsonEncode(body) : null;


    http.Response response;

    try {
      switch (method.toUpperCase()) {
        case 'GET':
          response = await _client.get(url, headers: requestHeaders);
          break;
        case 'POST':
          response = await _client.post(url, headers: requestHeaders, body: payload);
          break;
        case 'PUT':
          response = await _client.put(url, headers: requestHeaders, body: payload);
          break;
        case 'DELETE':
          response = await _client.delete(url, headers: requestHeaders);
          break;
        default:
          throw Exception("Invalid HTTP method: $method");
      }

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return jsonDecode(response.body);
      } else {
        print("Error ${response.statusCode}: ${response.body}");
        return null;
      }
    } catch (e) {
      print("Exception: $e");
      return null;
    }
  }
}
