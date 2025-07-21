// import 'package:flutter/material.dart';

// class ScheduleScreen extends StatelessWidget {
//   const ScheduleScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Schedule Screen'),
//       ),
//       body: const Center(
//         child: Text(
//           'Schedule Screen',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:testing/api/api.dart';
import 'package:testing/api/post.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  List<Post>? posts;
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    getData();

    //Fetch posts from API
  }

  getData() async {
    setState(() {
      isLoading = true;
    });

    final result = await ApiService().getPosts();
    setState(() {
      posts = result ?? []; // fallback to empty list
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Schedule Screen')),
      body: Visibility(
        visible: !isLoading,
        child: ListView.builder(
          itemCount: posts?.length,
          itemBuilder: (context, index) {
            return Container(child: Text(posts![index].title));
          },
        ),
        replacement: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
