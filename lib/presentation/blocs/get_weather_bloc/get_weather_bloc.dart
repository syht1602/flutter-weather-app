import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_counter_demo_app/core/error/failure.dart';
import 'package:flutter_counter_demo_app/domain/models/weather_model.dart';
import 'package:flutter_counter_demo_app/domain/usecases/get_weather_location_usecase.dart';

part 'get_weather_event.dart';

part 'get_weather_state.dart';
const String SERVER_FAILURE_MESSAGE = 'Server Failure';

class GetWeatherBloc extends Bloc<GetWeatherEvent, GetWeatherState> {
  final GetWeatherLocationUseCase getWeatherLocationUseCase;

  GetWeatherBloc(this.getWeatherLocationUseCase) : super(GetWeatherInitial()) {
    on<GetWeatherEvent>((event, emit) async* {
      // TODO: implement event handler
      if (event is GetWeatherLocationEvent) {
        yield Loading();
        try {
          final locationWeather = await getWeatherLocationUseCase
              .invoke(GetWeatherLocationParams(event.location));
          yield (Loaded(locationWeather));
        } catch (failure) {
          yield (Error(SERVER_FAILURE_MESSAGE));
          // _handleException(failure);
        }
      }
    });
  }
  // _handleException(failure){
  //   switch (failure.runtimeType) {
  //     case ServerFailure:
  //       return SERVER_FAILURE_MESSAGE;
  //     default:
  //       return 'Unexpected Error';
  //   }
  // }
}
