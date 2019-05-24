import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
//      padding: EdgeInsets.all(10.0),
//      margin: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.directions_bike,color: Colors.white,),
//            color: Colors.blue,
//            padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0, bottom: 25),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.blue,
//              border: Border(
//                top: BorderSide(
//                  color: Colors.black,
//                  width: 2,
//                  style: BorderStyle.solid,
//                ),
//                left: BorderSide(
//                  color: Colors.black,
//                  width: 2,
//                  style: BorderStyle.solid,
//                )
//              )
              border: Border.all(
                color: Colors.blueGrey,
                width: 3.0,
                style: BorderStyle.solid
              ),
              //borderRadius: BorderRadiusDirectional.all(Radius.circular(8.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  offset: Offset(2.0, 20.0),
                  blurRadius: 30.0,
                  spreadRadius: 1.0
                ),
                /*BoxShadow(
                    color: Colors.white,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 1.0,
                    spreadRadius: 1.0
                ),
                BoxShadow(
                    color: Colors.blueGrey,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 1.0,
                    spreadRadius: 1.0
                )*/

              ],
              shape: BoxShape.circle,
//              gradient: LinearGradient( //线性渐变
//                  colors: [
//                    Colors.red,
//                    Colors.blue
//                  ],
//                  begin: Alignment.topCenter,
//                  end: Alignment.bottomCenter
//
//              ),
              
              /*gradient: RadialGradient(
                  colors: [
                    Colors.red,
                    Colors.green,
                    Colors.white,
                  ],
                  center: Alignment.center,
                  radius: 0.8,
              ),*/

              gradient: SweepGradient(
                  colors: [
                    Colors.red,
                    Colors.green
                  ],
              ),


            ),
          ),
          Container(
            color: Colors.yellow,
            width: 100.0,
            height: 100.0,
          )
        ],
      ),
    );
  }
}