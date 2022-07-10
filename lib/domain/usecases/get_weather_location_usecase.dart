import 'package:equatable/equatable.dart';
import 'package:flutter_counter_demo_app/core/use_case.dart';
import 'package:flutter_counter_demo_app/domain/models/weather_model.dart';
import 'package:flutter_counter_demo_app/domain/repositories/weather_repository.dart';

class GetWeatherLocationUseCase
    implements UseCase<WeatherModel, GetWeatherLocationParams> {
  final WeatherRepository repo;

  GetWeatherLocationUseCase(this.repo);

  @override
  Future<WeatherModel> invoke(GetWeatherLocationParams params) async {
    // TODO: implement invoke
    return await repo.getWeatherLocation(params.location);
  }
}

class GetWeatherLocationParams extends Equatable {
  final String location;

  GetWeatherLocationParams(this.location);

  @override
  // TODO: implement props
  List<Object?> get props => [location];
}
