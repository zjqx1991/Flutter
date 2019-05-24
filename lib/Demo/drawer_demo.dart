import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer (
      child: ListView (
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Revan',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            accountEmail: Text('zjqx1991@163.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://resources.ninghao.org/images/childhood-in-a-picture.jpg"),
            ),
            decoration: BoxDecoration(
              color: Colors.black12,
              image: DecorationImage(
                image:NetworkImage(
                  "https://resources.ninghao.org/images/candy-shop.jpg",
                ),
                fit: BoxFit.cover,
                colorFilter:ColorFilter.mode(
                    Colors.black38,
                    BlendMode.srcOver
                ),
              ),//DecorationImage
            ),//BoxDecoration,
          ),//UserAccountsDrawerHeader

          ListTile(
            title: Text(
              '消息',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.message,color: Colors.black12,),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          Divider(height: 1.0,color: Colors.black12,),
          ListTile(
            title: Text(
              '关注',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.favorite_border,color: Colors.black12,),
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
          Divider(height: 1.0,color: Colors.black12,),
          ListTile(
            title: Text(
              '设置',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.settings,color: Colors.black12,),
            onTap: (){
              Navigator.pop(context);
            },
          )

        ],
      ),
    );
  }
}