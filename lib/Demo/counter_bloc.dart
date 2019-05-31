import 'package:flutter/material.dart';


class CounterHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    //获取数据
    CounterBloc _bloc = CountProvider.of(context).bloc;

    return Center(
      child: ActionChip(
          label: Text('0'),
          onPressed: (){
            _bloc.log();
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
          _bloc.log();
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
  void log() {
    print('Bloc');
  }
}