import 'package:flutter_architecture/domain/models/weather.dart';
import 'package:http/http.dart' as http;

class WeatherRepo {
  Future<Weather> getWeather() async {
    http.Response response =
        await http.get(Uri.parse('https://temp.smolensk.ws/output.txt'));
    String weatherTemp = response.body.toString();
    return Weather(weatherTemp);
  }
}
