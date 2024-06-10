import 'package:flutter/material.dart';
import 'package:mobile_app/add_tanya.dart';

void main() {
  runApp(ForumPost());
}

class ForumPost extends StatefulWidget {
  @override
  _ForumPostState createState() => _ForumPostState();
}

class _ForumPostState extends State<ForumPost> {
  TextEditingController nameController = TextEditingController();
  TextEditingController postController = TextEditingController();

  List<Map<String, String>> posts = [];

  void addPost() {
    String name = nameController.text;
    String post = postController.text;

    if (name.isNotEmpty && post.isNotEmpty) {
      setState(() {
        posts.add({
          'name': name,
          'post': post,
        });
      });

      // Clear the text fields after submitting the post
      nameController.clear();
      postController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: const Color.fromRGBO(154, 212, 166, 1),
            title: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Forum Post',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 20.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  if (Navigator.of(context).canPop()) {
                    Navigator.of(context).pop();
                  } else {
                    print('Error');
                  }
                },
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Masukkan nama anda',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextField(
                    controller: postController,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      labelText: 'Ceritakan keluhan anda',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: addPost,
                  child: Text('Post'),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ))),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      posts[index]['name'] ?? '',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    subtitle: Text(
                      posts[index]['post'] ?? '',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
