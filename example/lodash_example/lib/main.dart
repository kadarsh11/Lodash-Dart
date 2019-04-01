import 'package:flutter/material.dart';
import 'package:lodash_dart/lodash_dart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Lodash _ = Lodash();

  alogth() {
    _.chunk(array: ['a', 'b', 'c', 'd'], size: 2);
// => [['a', 'b'], ['c', 'd']]

    _.chunk(array: ['a', 'b', 'c', 'd'], size: 3);
// => [['a', 'b', 'c'], ['d']]
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RaisedButton(
        onPressed: () => alogth(),
        child: Text("Test"),
      ),
    );
  }
}
