import 'package:flutter/material.dart';
import '../model/post.dart';


class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _SliverListDemo();
  }
}



class _SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
              padding:EdgeInsets.all(10.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return Padding(
                    padding:EdgeInsets.only(bottom: 20),
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      elevation: 14.0,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      child: AspectRatio(
                          aspectRatio: 16/9,
                        child: Image.network(
                            postList[index].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                childCount: postList.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}


class _SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Revan'),
//            expandedHeight: 100,
            leading: Icon(Icons.menu),
            floating: true,
      ),
          SliverPadding(
              padding: EdgeInsets.all(10.0),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                        (context, index){
                      return Image.network(
                        postList[index].imageUrl,
                        fit: BoxFit.cover,
                      );
                    },
                    childCount: postList.length
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0
                ),
              ),
          ),
        ],
      ),
    );
  }
}


class _SliverCountDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
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

          ),


        ],
      ),
    );
  }
}