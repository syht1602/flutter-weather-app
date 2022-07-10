import 'package:flutter_counter_demo_app/domain/models/weather_model.dart';

abstract class WeatherRepository {
  Future<WeatherModel> getWeatherLocation(String location);
}
