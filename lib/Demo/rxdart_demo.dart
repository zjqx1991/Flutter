import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxdartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rxdart'),
      ),
      body: _RxdartDemoHome(),
    );
  }
}

class _RxdartDemoHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RxdartDemoHomeState();
  }
}

class _RxdartDemoHomeState extends State<_RxdartDemoHome> {

  @override
  void initState() {
    super.initState();

    Observable<String> _observable = 
    // Observable(Stream.fromIterable(['hello', '您好']));
    Observable.fromFuture(Future.value('Hello~~'));
    _observable.listen(print);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
    );
  }
}