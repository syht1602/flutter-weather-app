import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_demo_app/presentation/blocs/get_weather_bloc/get_weather_bloc.dart';

class WeatherLocationSearchInputWidget extends StatefulWidget {
  const WeatherLocationSearchInputWidget({Key? key}) : super(key: key);

  @override
  State<WeatherLocationSearchInputWidget> createState() =>
      _WeatherLocationSearchInputWidgetState();
}

class _WeatherLocationSearchInputWidgetState
    extends State<WeatherLocationSearchInputWidget> {
  final _locationInputController = TextEditingController();
  late String location;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _locationInputController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Input location name',
          ),
          onChanged: (value) {
            location = value;
          },
          onSubmitted: (_) {
            _getLocationWeather(context);
          },
        ),
        SizedBox(height: 10),
        OutlinedButton(
            onPressed: () => _getLocationWeather(context),
            child: Text('Get weather'))
      ],
    );
  }

  void _getLocationWeather(BuildContext context) {
    print("Search for location : $location");
    _locationInputController.clear();
    BlocProvider.of<GetWeatherBloc>(context)
        .add(GetWeatherLocationEvent(location));
  }
}
