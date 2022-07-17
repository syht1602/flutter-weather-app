import 'package:flutter_counter_demo_app/core/error/exceptions.dart';
import 'package:flutter_counter_demo_app/core/error/failure.dart';
import 'package:flutter_counter_demo_app/core/network/network_info.dart';
import 'package:flutter_counter_demo_app/data/datasources/get_weather_location_remote.dart';
import 'package:flutter_counter_demo_app/domain/models/weather_model.dart';
import 'package:flutter_counter_demo_app/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final GetWeatherLocationRemote getWeatherLocationRemote;
  final NetworkInfo networkInfo;

  WeatherRepositoryImpl(this.getWeatherLocationRemote, this.networkInfo);

  @override
  Future<WeatherModel> getWeatherLocation(String location) async {
    // TODO: implement getWeatherLocation
    try {
      if (await networkInfo.isConnected) {
        return getWeatherLocationRemote
            .getWeatherLocation(location)
            .then((rawWeather) => rawWeather.toWeatherEntity());
      } else {
        throw ServerFailure([
          {'message': 'Network is not available !'}
        ]);
      }
    } on ServerException {
      // print(e);
      throw ServerFailure([
          {'message': 'Network is not available !'}]);
    }
  }
}
