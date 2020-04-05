import 'dart:convert';
import 'package:http/http.dart' as http;

const openWeatherURL =
    'http://weather.livedoor.com/forecast/webservice/json/v1?city=';

class NetWorkHelper {
  NetWorkHelper(this.url);
  final String url;

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      print('pass the 200');
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

class WeatherModel {
  Future<dynamic> getCityWeather(String cityId) async {
    NetWorkHelper networkHelper = NetWorkHelper('$openWeatherURL$cityId');
    var weatherData = networkHelper.getData();
    return weatherData;
  }
}
