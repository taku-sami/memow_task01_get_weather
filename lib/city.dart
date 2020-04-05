import 'package:flutter/material.dart';
import 'utility.dart';

class City extends StatelessWidget {
  String prefectureName;
  City(this.prefectureName);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('管轄地域を選択してください'),
      ),
      body: ListView(
        children: <Widget>[
          CityTile('稚内'),
          CityTile('旭川'),
          CityTile('留萌'),
          CityTile('網走'),
          CityTile('北見'),
          CityTile('紋別'),
          CityTile('根室'),
          CityTile('釧路'),
          CityTile('帯広'),
          CityTile('室蘭'),
          CityTile('浦河'),
          CityTile('札幌'),
          CityTile('岩見沢'),
          CityTile('倶知安'),
          CityTile('函館'),
          CityTile('江差'),
        ],
      ),
    );
  }
}
