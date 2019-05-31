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

    //Observable用法
    // Observable<String> _observable = 
    // // Observable(Stream.fromIterable(['hello', '您好']));
    // Observable.fromFuture(Future.value('Hello~~'));
    // _observable.listen(print);

    //先监听才可以监听到数据
    //PublishSubject<String> _subject = PublishSubject<String>();

    BehaviorSubject<String> _subject = BehaviorSubject<String>();

    _subject.listen((data){
      print('listen 1: ${data}');
    });
    //添加数据
    _subject.add('Hello');

    _subject.listen((data) => print('listen 2:${data.toUpperCase()}'));

    //添加数据
    _subject.add('World');

    _subject.close();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
    );
  }
}