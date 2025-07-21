import 'package:http/http.dart' as http;
import 'package:testing/api/post.dart';

class ApiService {
  Future<List<Post>?> getPosts() async {
    var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    var response = await client.get(uri);
    print(response.body);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    } else {
      print("Error: ${response.statusCode}");
      return null;
    }
  }
}
