import 'package:flutter/material.dart';
import '../model/post.dart';
import 'content_demo.dart';

class ListViewDemo extends StatelessWidget {


  Widget _buildListView(BuildContext context, int index) {
    return Container(
        color: Colors.grey[200],
        margin: EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(    // 带有比例显示的图片
                  aspectRatio: 16/9,
                  child: Image.network(
                    postList[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
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
            ),
            Positioned.fill(
                child: Material(
                  color: Colors.transparent,//透明的
                  child: InkWell(
                    splashColor: Colors.white.withOpacity(0.3),
                    highlightColor: Colors.white.withOpacity(0.1),
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context){
                            return ContentDemo(post: postList[index]);
                          })
                      );
                    },
                  ),
                )
            ),
          ],
        ),
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