import 'package:flutter/material.dart';
import 'utility.dart';

class Prefecture extends StatelessWidget {
  String areaName;
  Prefecture(this.areaName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(areaName),
      ),
      body: ListView(
        children: <Widget>[
          PrefectureTile('北海道'),
          PrefectureTile('青森県'),
          PrefectureTile('岩手県'),
          PrefectureTile('宮城県'),
          PrefectureTile('秋田県'),
          PrefectureTile('山形県'),
          PrefectureTile('福島県'),
        ],
      ),
    );
  }
}
