import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[

        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          width: 200.0,
          height: 300.0,
        ),
        IconDadge(
          Icons.directions_bike,
          color: Colors.white,
          backgroundColor: Colors.blue,
          size: 30,
        ),

      ],
    );

   /* return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconDadge(
          Icons.directions_bike,
          color: Colors.white,
          backgroundColor: Colors.blue,
          size: 30,
        ),
        IconDadge(
          Icons.ac_unit,
          color: Colors.white,
          backgroundColor: Colors.blue,
          size: 30,
        ),
        IconDadge(
          Icons.all_inclusive,
          color: Colors.white,
          backgroundColor: Colors.blue,
          size: 30,
        ),
      ],
    );*/
  }
}


class IconDadge extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;
  final Color backgroundColor;

  IconDadge(
      this.icon,
  {
    this.size = 32.0,
    this.color = Colors.blue,
    this.backgroundColor = Colors.white
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(this.icon, size: this.size,color: this.color,),
      width: this.size + 30.0,
      height: this.size + 30.0,
      color: this.backgroundColor,
    );
  }
}