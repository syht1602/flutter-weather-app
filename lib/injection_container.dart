import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:flutter_counter_demo_app/core/network/network_info.dart';
import 'package:flutter_counter_demo_app/data/datasources/get_weather_location_remote.dart';
import 'package:flutter_counter_demo_app/data/repositories/weather_repository_impl.dart';
import 'package:flutter_counter_demo_app/domain/repositories/weather_repository.dart';
import 'package:flutter_counter_demo_app/domain/usecases/get_weather_location_usecase.dart';
import 'package:flutter_counter_demo_app/presentation/blocs/get_weather_bloc/get_weather_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  //Bloc
  sl.registerFactory(() => GetWeatherBloc(sl()));
  //Use case
  sl.registerLazySingleton(() => GetWeatherLocationUseCase(sl()));

  //Repo
  sl.registerLazySingleton<WeatherRepository>(
      () => WeatherRepositoryImpl(sl(), sl()));

  //Data source
  sl.registerLazySingleton<GetWeatherLocationRemote>(
      () => GetWeatherLocationRemoteImpl(http.Client()));

  //Core
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(DataConnectionChecker()));
}
