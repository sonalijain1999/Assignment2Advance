import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home:  MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}
bool click=false;
class _State extends State<MyApp> {
  double _height=200;
  double _width=200;
  void updateState(){
    click=!click;
    click?setState(() {
      _height=300;
      _width=300;
    }):setState(() {
    _height=200;
    _width=200;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Flutter Advance-Assignment 2'),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: updateState,
              child: const Text("click me")),
          Center(
            child: AnimatedContainer(
              padding:  const EdgeInsets.all(32.0),
              curve: Curves.easeIn,
              height: _width,
              width: _height,
              color: Colors.lightBlueAccent,
              duration: const Duration(milliseconds: 3000),

            ),
          ),
        ],
      ),
    );
  }
}
