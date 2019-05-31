import 'package:flutter/material.dart';
import 'dart:async';

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //获取数据
    CounterBloc _bloc = CountProvider.of(context).bloc;

    return Center(
      child: StreamBuilder(
          initialData: 0,
          stream: _bloc.count,
           builder: (context, snapshot) {
            return ActionChip(
                label: Text('${snapshot.data}'),
                onPressed: () {
                  _bloc.sink.add(1);
                });
          }),
    );
  }
}

class CounterActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //获取数据
    CounterBloc _bloc = CountProvider.of(context).bloc;

    return FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _bloc.sink.add(1);
        });
  }
}

/*
* 用来传递数据
*/
class CountProvider extends InheritedWidget {
  final Widget child;
  final CounterBloc bloc;

  CountProvider({this.child, this.bloc}) : super(child: child);

  static CountProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CountProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }
}

class CounterBloc {
  int _count = 0;

  //输出数据控制器
  final _counterController = StreamController<int>();
  //获取count的get方法
  Stream<int> get count => _counterController.stream;

  //点击的流控制器
  final _counterActionCountroller = StreamController<int>();
  StreamSink<int> get sink => _counterActionCountroller.sink;
/*
  StreamSink<int> sink() {
    return _counterActionCountroller.sink;
  }
  */

  CounterBloc() {
    //监听数据
    _counterActionCountroller.stream.listen(onData);
  }

  //监听数据回调
  void onData(value) {
    _count = value + _count; //_count累加
    print(_count);
    //把数据添加流上
    _counterController.add(_count);
  }

  void disponse() {
    _counterActionCountroller.close();
    _counterController.close();
  }

  void log() {
    print('Bloc');
  }
}
