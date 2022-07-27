import 'dart:convert';

import 'package:flutter_counter_demo_app/core/error/exceptions.dart';
import 'package:flutter_counter_demo_app/data/entities/raw_weather/raw_weather.dart';
import 'package:http/http.dart' as http;

abstract class GetWeatherLocationRemote {
  ///Call api http://api.openweathermap.org/data/2.5/weather?q=Berlin&appid=0bb4fa969fcea7de2c16f611e71f610f endpoint
  ///
  /// Throw exception [ServerException] for error code.
  Future<RawWeather> getWeatherLocation(String location);
}

class GetWeatherLocationRemoteImpl implements GetWeatherLocationRemote {
  final http.Client client;
  final String key = '0bb4fa969fcea7de2c16f611e71f610f';

  GetWeatherLocationRemoteImpl(this.client);

  @override
  Future<RawWeather> getWeatherLocation(String location) async {
    // TODO: implement getWeatherLocation
    final response = await client.get(
        Uri.parse(
            'http://api.openweathermap.org/data/2.5/weather?q=$location&appid=$key'),
        headers: {
          'Content-Type': 'application/json',
        });
    if (response.statusCode == 200) {
      print('Raw data : ${response.body.toString()}');
      return RawWeather.fromJson(jsonDecode(response.body));
    } else {
      print('Raw data exception');
      throw ServerException();
    }
  }
}
