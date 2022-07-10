import 'package:equatable/equatable.dart';

class WeatherModel extends Equatable {
  final double? temp;

  WeatherModel(this.temp) : super();

  @override
  // TODO: implement props
  List<Object?> get props => [temp];
}
