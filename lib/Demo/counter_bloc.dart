import 'package:flutter/material.dart';
import 'dart:async';


class CounterHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    //获取数据
    CounterBloc _bloc = CountProvider.of(context).bloc;

    return Center(
      child: ActionChip(
          label: Text('0'),
          onPressed: (){
            _bloc.sink().add(2);
          }
      ),
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
        onPressed: (){
          _bloc.sink().add(1);
        }
    );
  }
}


/*
* 用来传递数据
*/
class CountProvider extends InheritedWidget {
  final Widget child;
  final CounterBloc bloc;

  CountProvider({
    this.child,
    this.bloc
}):super(child: child);

  static CountProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CountProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

}


class CounterBloc {

  final _counterActionCountroller = StreamController<int>();
//  StreamSink<int> get sink => _counterActionCountroller.sink;

  StreamSink<int> sink() {
    return _counterActionCountroller.sink;
  }

  CounterBloc(){
    _counterActionCountroller.stream.listen(onData);
  }

  void onData(value) {
    print(value);
  }

  void disponse() {
    _counterActionCountroller.close();
  }

  void log() {
    print('Bloc');
  }
}