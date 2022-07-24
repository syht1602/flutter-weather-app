import 'package:flutter/material.dart';
import 'package:flutter_counter_demo_app/domain/models/weather_model.dart';

class GetWeatherWidget extends StatelessWidget {
  final WeatherModel weatherModel;

  const GetWeatherWidget({Key? key, required this.weatherModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('Temp is : ${weatherModel.temp}'),
    );
  }
}
