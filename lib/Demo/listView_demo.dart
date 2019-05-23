import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {


  Widget _buildListView(BuildContext context, int index) {
    return Container(
        color: Colors.grey[200],
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