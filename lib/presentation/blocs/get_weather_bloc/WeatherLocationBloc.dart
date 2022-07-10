import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_demo_app/data/entities/WeatherHistory.dart';
import 'package:flutter_counter_demo_app/domain/repositories/weather_repository.dart';

import 'WeatherLocationState.dart';

class WeatherLocationBloc
    extends Bloc<WeatherLocationBloc, WeatherLocationState> {
  WeatherLocationBloc(super.initialState);
  late final WeatherRepository repo;

  Future<WeatherHistory>? getWeatherLocation() {
    // state.loadingState = true;
    // await repo.
    return null;
  }
}
