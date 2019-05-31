import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
      ),
      body: _HttpDemoHome(),
    );
  }
}

class _HttpDemoHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HttpDemoHomeState();
  }
}

class _HttpDemoHomeState extends State<_HttpDemoHome> {

  Future<List<Post>> fetchPosts() async {
    final response = await http.get('https://resources.ninghao.net/demo/posts.json');
    if (200 == response.statusCode) {
      final responseBody = json.decode(response.body);

      List postList = responseBody['posts'];

      List<Post> posts = postList.map(
          (item) => Post.fromJson(item)
      ).toList();
      return posts;
    }
  }

  @override
  void initState() {
    super.initState();
//    fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
//    return Center();
    return FutureBuilder(
      future: fetchPosts(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
        
        
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text('loading...'),
            );
          }
          
          List<Post> postList = snapshot.data;
          return ListView.builder(
            itemCount: postList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(postList[index].title),
                  subtitle: Text(
                    postList[index].description,
                    maxLines: 2,
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(postList[index].imageUrl),
                  ),
                );
              }
          );
          return ListView(
            children: List(snapshot.data).map<Widget>(
                    (post) {
                  return ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.description),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(post.imageUrl),
                    ),
                  );
                }
            ).toList(),
          );
        }
    );
  }
}


/**************    模型数据     ***************/

class Post {
  final int id;
  final String title;
  final String description;
  final String author;
  final String imageUrl;

  //构造函数
  Post(
      this.id,
      this.title,
      this.description,
      this.author,
      this.imageUrl
      );

  Post.fromJson(Map json)
  :
        id = json['id'],
        title = json['title'],
        description = json['description'],
        author = json['author'],
        imageUrl = json['imageUrl'];


  Map toJson() => {
    'title': title,
    'description': description
  };

}
