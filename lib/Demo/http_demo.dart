import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';


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

  fetchPost() async {
    final response = await http.get('https://resources.ninghao.net/demo/posts.json');
    print('${response.body}');
  }

  @override
  void initState() {
    super.initState();
    fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
    );
  }
}