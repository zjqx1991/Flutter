import 'package:flutter/material.dart';
import 'Demo/listView_demo.dart';


void main() => runApp(RootApp());


class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RootPage();
  }
}

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Revan'),
        elevation: 0,//设置导航条的投影
      ),
      body: ListViewDemo(),
    );
  }

}

