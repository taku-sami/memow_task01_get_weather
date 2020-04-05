import 'package:flutter/material.dart';
import 'package:memowtask01getwheather/weather.dart';

var today;
var todayTelop;
var todayMin;
var todayMax;
var todayImage;

var tommorow;
var tommorowTelop;
var tommorowMin;
var tommorowMax;
var tommorowImage;

var afterday;
var afterdayTelop;
var afterdayMin;
var afterdayMax;
var afterdayImage;

class WeatherScreen extends StatelessWidget {
  String cityName;
  String cityId;
  WeatherScreen(this.cityName, this.cityId);

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel = WeatherModel();

    Future getWeatherData() async {
      var weatherData = await weatherModel.getCityWeather(cityId);

      today = weatherData['forecasts'][0]['dateLabel'];
      todayTelop = weatherData['forecasts'][0]['telop'];
      todayMin = weatherData['forecasts'][0]['temperature']['min'];
      todayMax = weatherData['forecasts'][0]['temperature']['max'];
      todayImage = weatherData['forecasts'][0]['image']['url'];

      tommorow = weatherData['forecasts'][1];
      tommorow = weatherData['forecasts'][1]['dateLabel'];
      tommorowTelop = weatherData['forecasts'][1]['telop'];
      tommorowMin =
          weatherData['forecasts'][1]['temperature']['min']['celsius'];
      tommorowMax =
          weatherData['forecasts'][1]['temperature']['max']['celsius'];
      tommorowImage = weatherData['forecasts'][1]['image']['url'];

      afterday = weatherData['forecasts'][2]['dateLabel'];
      afterdayTelop = weatherData['forecasts'][2]['telop'];
      afterdayMin = weatherData['forecasts'][2]['temperature']['min'];
      afterdayMax = weatherData['forecasts'][2]['temperature']['max'];
      afterdayImage = weatherData['forecasts'][2]['image']['url'];
    }

    getWeatherData();
    return Scaffold(
      appBar: AppBar(
        title: Text('$cityNameの天気予報'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('$today'),
                Text('$todayTelop'),
                Text('$todayMin'),
                Text('$todayMax'),
                Image.network('$todayImage'),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('$tommorow'),
                Text('$tommorowTelop'),
                Text('$tommorowMin'),
                Text('$tommorowMax'),
                Image.network('$tommorowImage'),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('$afterday'),
                Text('$afterdayTelop'),
                Text('$afterdayMin'),
                Text('$afterdayMax'),
                Image.network('$afterdayImage'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
