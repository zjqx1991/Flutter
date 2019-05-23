import 'package:flutter/material.dart';

void main() => runApp(RootApp());


class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Revan'),
          elevation: 0,//设置导航条的投影
        ),
        body: Center(
          child: Text(
            'Hello World',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

      ),

    );
  }
}