part of 'get_weather_bloc.dart';

abstract class GetWeatherEvent extends Equatable {
  const GetWeatherEvent();
}

class GetWeatherLocationEvent extends GetWeatherEvent {
  final String location;
  GetWeatherLocationEvent(this.location);
  @override
  // TODO: implement props
  List<Object?> get props => [location];
}
