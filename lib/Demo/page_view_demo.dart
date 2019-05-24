import 'package:flutter/material.dart';
import '../model/post.dart';

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 100,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      children: <Widget>[
        Container(
          color: Colors.blueGrey,
        ),
        Container(
          color: Colors.blueGrey,
        ),
        Container(
          color: Colors.blueGrey,
        ),
        Container(
          color: Colors.blueGrey,
        ),
        Container(
          color: Colors.blueGrey,
        ),
        Container(
          color: Colors.blueGrey,
        ),
        Container(
          color: Colors.blueGrey,
        )
      ],

    );
  }
}

class _GridViewBuildDemo extends StatelessWidget {

  Widget _gridViewItemBuilder (context, index) {
    return Container(
//      margin: EdgeInsets.all(10.0),
      child: Image.network(
        postList[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: GridView.builder(
          itemCount: postList.length,
          /*//这个代理是设置交叉轴上显示的 个数Count
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),*/

          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0

          ),
          itemBuilder: _gridViewItemBuilder
      ),
    );
  }
}

class _GridViewCountDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      children: <Widget>[
        Container(
          color: Colors.brown,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.blueGrey,
        ),
      ],
    );
  }
}

class _GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
        ),
        children: <Widget>[
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.brown,
          )
        ],
    );
  }
}

class _PageViewBuilderDemo extends StatelessWidget {

  Widget _pageItemBuilder(context, index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(//可以实现填充整个可见视图
          child: Image.network(
            postList[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),

        Positioned(
            bottom: 10.0,
            left: 10.0,
            child: Column(
//                    mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  postList[index].title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                Text(
                    postList[index].author
                )
              ],
            )
        ),



      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: postList.length,
        itemBuilder: _pageItemBuilder,
    );
  }
}

class _PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.brown,
          child: Text(
            'One',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,

            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.brown,
          child: Text(
            'Two',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,

            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.brown,
          child: Text(
            'Three',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,

            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.brown,
          child: Text(
            'Four',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,

            ),
            textAlign: TextAlign.center,
          ),
        )

      ],
    );
  }
}
