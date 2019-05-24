import 'package:flutter/material.dart';
import 'Demo/drawer_demo.dart';
import 'Demo/bottom_navigation_bar.dart';
import 'Demo/listView_demo.dart';
import 'Demo/container_demo.dart';
import 'Demo/layout_demo.dart';
import 'Demo/page_view_demo.dart';


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
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          //1、导航栏
          appBar: AppBar(
            title: Text('Revan'),
            elevation: 0,//设置导航条的投影
            //左侧导航条按钮（和drawer冲突）
//            leading: IconButton(
//                icon: Icon(Icons.menu),
//                onPressed: (){
//                  debugPrint("点击：导航条——菜单");
//                }
//            ),
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
                  Tab(icon: Icon(Icons.directions_bike),),
                  Tab(icon: Icon(Icons.view_comfy),)
                ],
            ),

          ),
          //2、抽屉
          drawer: DrawerDemo(),
          //3、中间内容
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              ContainerDemo(),
              LayoutDemo(),
              PageViewDemo()
            ],
          ),
          //4、TabBarBottom
          bottomNavigationBar: BottomNavigationBarDemo(),
        )
    );
  }

}

