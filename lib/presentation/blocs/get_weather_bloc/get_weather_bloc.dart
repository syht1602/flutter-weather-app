import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_counter_demo_app/domain/models/weather_model.dart';

part 'get_weather_event.dart';
part 'get_weather_state.dart';

class GetWeatherBloc extends Bloc<GetWeatherEvent, GetWeatherState> {
  GetWeatherBloc() : super(GetWeatherInitial()) {
    on<GetWeatherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
