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
      debugShowCheckedModeBanner: false,  //隐藏右上角debug标签
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Colors.white30,
        splashColor: Colors.white12
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Revan'),
            elevation: 0,//设置导航条的投影
            //左侧导航条按钮
            leading: IconButton(
                icon: Icon(Icons.menu), 
                onPressed: (){
                  debugPrint("点击：导航条——菜单");
                }
            ),
            //右侧导航条按钮
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: (){
                    print('点击：导航条---搜索');
                  }
              ),
            ],
            //tabBar  
            bottom: TabBar( //设置tabBar条
                unselectedLabelColor: Colors.black38, //没有选中
                indicatorColor: Colors.black45,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 2,
                tabs:[
                  Tab(icon: Icon(Icons.local_florist),),
                  Tab(icon: Icon(Icons.change_history),),
                  Tab(icon: Icon(Icons.directions_bike),)
                ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(
                Icons.local_florist,
                size: 150,
                color: Colors.black12,
              ),
              Icon(
                Icons.change_history,
                size: 150.0,
                color: Colors.black12,
              ),
              Icon(
                Icons.directions_bike,
                size: 150.0,
                color: Colors.black12,
              )

            ],
          ),
        )
    );
  }

}

