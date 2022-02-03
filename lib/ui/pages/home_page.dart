import 'package:flutter/material.dart';
import 'package:flutter_architecture/domain/models/weather.dart';
import 'package:flutter_architecture/domain/weather_controller.dart';
import 'package:flutter_architecture/locator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Weather weatherText = Weather('Погода в Смоленске');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Text(
        'Погода в Смоленске ${weatherText.weatherTemp.substring(0, weatherText.weatherTemp.indexOf(';'))}°С',
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Weather getWeather =
              await locator.get<WeatherController>().getSmolenskWeather();
          setState(() {
            weatherText = getWeather;
          });
        },
        child: const Icon(Icons.update),
      ),
    );
  }
}
