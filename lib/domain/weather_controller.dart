import 'package:flutter_architecture/domain/models/weather.dart';
import 'package:flutter_architecture/locator.dart';
import 'package:flutter_architecture/repository/weather_repo.dart';

class WeatherController {
  Future<Weather> getSmolenskWeather() async {
    return locator.get<WeatherRepo>().getWeather();
  }
}
