// import 'package:flutter/material.dart';

// class ChatScreen extends StatelessWidget {
//   const ChatScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Chat Screen')),

//       body: const Center(
//         child: Text('Chat Screen', style: TextStyle(fontSize: 24)),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testing/api/Pracetice/base_Client.dart';
import 'package:testing/api/post.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat Screen')),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  var response = await BaseClient().get('posts').catchError((
                    error,
                  ) {
                    print("Error: $error");
                  });
                  if (response == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Failed to fetch data')),
                    );
                  } else {
                    print("Response: Successfully fetched data");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Data fetched successfully: $response'),
                      ),
                    );
                    print("Response Length: ${response.length}");
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button background color
                  foregroundColor: Colors.white, // Text/icon color
                  textStyle: const TextStyle(fontSize: 24),
                ),
                child: const Text('Get'),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () async {
                  var postData = Post(
                    userId: 1,
                    id: 101,
                    title: 'Sample Title',
                    // body: 'This is a sample body for the post.',
                  );

                  var response = await BaseClient()
                      .post('posts', postData)
                      .catchError((error) {
                        print("Error: $error");
                      });
                  if (response == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Failed to post data')),
                    );
                  } else {
                    print("Response: Successfully posted data");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Data posted successfully: $response'),
                      ),
                    );
                    print("Response Length: ${response.length}");
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Button background color
                  foregroundColor: Colors.white, // Text/icon color
                  textStyle: const TextStyle(fontSize: 24),
                ),
                child: const Text('Post'),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () async {
                  var id = 1;
                  var postData = Post(
                    userId: 1,
                    id: 1,
                    title: 'Sample Title',
                    body: 'This is a sample body for the post.',
                  );

                  var response = await BaseClient()
                      .put('posts/$id', postData)
                      .catchError((error) {
                        print("Error: $error");
                      });
                  if (response == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Failed to post data')),
                    );
                  } else {
                    print("Response: Successfully posted data");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Data posted successfully: $response'),
                      ),
                    );
                    print("Response Length: ${response.length}");
                  }
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow, // Button background color
                  foregroundColor: Colors.white, // Text/icon color
                  textStyle: const TextStyle(fontSize: 24),
                ),
                child: const Text('Put'),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () async {
                  var id = 1;

                  var response = await BaseClient()
                      .delete('posts/$id')
                      .catchError((error) {
                        print("Error: $error");
                      });
                  if (response == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Failed to delete data')),
                    );
                  } else {
                    print("Response: Successfully deleted data");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Data deleted successfully: $response'),
                      ),
                    );
                    print("Response Length: ${response.length}");
                  }
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Button background color
                  foregroundColor: Colors.white, // Text/icon color
                  textStyle: const TextStyle(fontSize: 24),
                ),
                child: const Text('Delete'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
