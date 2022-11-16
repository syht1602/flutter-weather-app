import 'package:equatable/equatable.dart';

class WeatherModel extends Equatable {
  final double? temp;
  final String? countryName;

  WeatherModel(this.temp, this.countryName) : super();

  @override
  // TODO: implement props
  List<Object?> get props => [temp, countryName];
}
