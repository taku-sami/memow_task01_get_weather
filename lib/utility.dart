import 'package:flutter/material.dart';
import 'prefecture.dart';
import 'city.dart';
import 'weather_screen.dart';

class AreaTile extends StatelessWidget {
  String areaName;
  AreaTile(this.areaName);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(areaName),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return Prefecture(areaName);
          }),
        );
      },
    );
  }
}

class PrefectureTile extends StatelessWidget {
  String prefectureName;
  PrefectureTile(this.prefectureName);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(prefectureName),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return City(prefectureName);
          }),
        );
      },
    );
  }
}

class CityTile extends StatelessWidget {
  String cityName;
  CityTile(this.cityName);

  @override
  Widget build(BuildContext context) {
    String selectedCityId;

    String getCityId(String cityName) {
      var citiesId = {
        '稚内': '011000',
        '旭川': '012010',
        '留萌': '012020',
        '網走': '013010',
        '北見': '013020',
        '紋別': '013030',
        '根室': '014010',
        '釧路': '014020',
        '帯広': '014030',
        '室蘭': '015010',
        '浦河': '015020',
        '札幌': '016010',
        '岩見沢': '016020',
        '倶知安': '016030',
        '函館': '017010',
        '江差': '017020',
      };

      selectedCityId = citiesId[cityName];
      return selectedCityId;
    }

    return ListTile(
      leading: Text(cityName),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        getCityId(cityName);
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return WeatherScreen(cityName, selectedCityId);
          }),
        );
      },
    );
  }
}
