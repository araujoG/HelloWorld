import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 18;
  Color texto;

  Color randomColor() {
    return Color(Random().nextInt(0xffffffff));
  }
  double screenSize(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter >= 68){
        _counter = 18;
      }
      texto = randomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Love is love',
              style: TextStyle(
                fontSize: _counter,
                color: texto
              )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.aspect_ratio),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
