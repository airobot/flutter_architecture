import 'package:flutter_architecture/domain/models/weather.dart';
import 'package:flutter_architecture/domain/weather_controller.dart';
import 'package:flutter_architecture/repository/weather_repo.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.I;

void setup() {
  locator.registerLazySingleton<WeatherRepo>(() => WeatherRepo());
  locator.registerLazySingleton<WeatherController>(() => WeatherController());
}
