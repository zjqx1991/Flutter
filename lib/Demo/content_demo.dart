import 'package:flutter/material.dart';
import '../model/post.dart';

class ContentDemo extends StatelessWidget {

  final Post post;

  ContentDemo({
    @required this.post
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.post.title,
        ),
      ),
      body: Column(
        children: <Widget>[
          AspectRatio(
              aspectRatio: 16/9,
              child: Image.network(
                this.post.imageUrl,
                fit: BoxFit.cover,
              ),
          ),

        ],
      ),
    );
  }
}