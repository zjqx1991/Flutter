import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StreamDemoState();
  }
}

class _StreamDemoState extends State<StreamDemo> {


  StreamSubscription _streamSubscription;
  StreamController _stream;

  @override
  void dispose() {
    super.dispose();

    _stream.close();
  }

  @override
  void initState() {
    super.initState();

//    Stream<String> _stream = Stream.fromFuture(fectData());
//    _stream.listen(onData, onError: onError);
    _stream = StreamController<String>();

    _streamSubscription = _stream.stream.listen(onData, onError: onError);

  }

  void onError(error) {
    print(error);
  }

  void onData(data) {
    print(data);
  }

  Future<String> fectData() async{
    await Future.delayed(Duration(seconds: 5));
//    throw 'throw';
    return 'hello';
  }

  void addDataToStream() async {
    
  }

  void _pauseStream(){
    _streamSubscription.pause();
  }

  void _resumeStream(){
    _streamSubscription.resume();
  }

  void _cancelStream(){
    _streamSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                onPressed: _pauseStream,
                child: Text("Pause"),
            ),
            FlatButton(
                onPressed: _resumeStream,
                child: Text("Resume"),
            ),
            FlatButton(
                onPressed: _cancelStream,
                child: Text("Cancel"),
            ),
          ],
        ),
      ),
    );
  }

}