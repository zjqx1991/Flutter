import 'package:flutter/material.dart';
import 'model/post.dart';

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
      body: ListPage(),
    );
  }

}


class ListPage extends StatelessWidget {


  Widget _buildListView(BuildContext context, int index) {
    return Container(
      color: Colors.black54,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(
            postList[index].imageUrl,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10,),
          Text(
            postList[index].title,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
          Text(
            postList[index].author,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
          SizedBox(height: 10,),

        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: postList.length,
        itemBuilder: _buildListView,
    );
  }

}