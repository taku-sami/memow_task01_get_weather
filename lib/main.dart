import 'package:flutter/material.dart';
import 'utility.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '地域'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          AreaTile('北海道・東北'),
          AreaTile('関東'),
          AreaTile('信越・北陸'),
          AreaTile('東海'),
          AreaTile('近畿'),
          AreaTile('中国'),
          AreaTile('四国'),
          AreaTile('九州・沖縄'),
        ],
      ),
    );
  }
}
