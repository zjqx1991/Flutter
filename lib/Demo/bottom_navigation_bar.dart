import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {


  int _currentSelectIndex = 0;

  void _onTapChange(int index){
    setState(() {
      _currentSelectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentSelectIndex,
      type: BottomNavigationBarType.fixed,
//              fixedColor: Colors.black,   //不能与 selectedItemColor 同时使用
      selectedItemColor: Colors.red,  //不能与 fixedColor 同时使用
//              backgroundColor: Colors.amber,
//              unselectedItemColor: Colors.red,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('Favorite')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            title: Text('Library')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('My'),
        ),
      ],

      onTap: _onTapChange,
    );
  }
}