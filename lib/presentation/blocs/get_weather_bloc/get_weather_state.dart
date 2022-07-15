part of 'get_weather_bloc.dart';

abstract class GetWeatherState extends Equatable {
  const GetWeatherState();
}

class GetWeatherInitial extends GetWeatherState {
  @override
  List<Object> get props => [];
}

class Empty extends GetWeatherState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Loading extends GetWeatherState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Loaded extends GetWeatherState {
  final WeatherModel weatherModel;

  Loaded(this.weatherModel);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Error extends GetWeatherState {
  final String message;

  Error(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
