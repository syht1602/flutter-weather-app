import 'package:flutter_counter_demo_app/domain/repositories/weather_repository.dart';
import 'package:flutter_counter_demo_app/domain/usecases/get_weather_location_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetWeatherLocationRepository extends Mock
    implements WeatherRepository {}

void main() {
  GetWeatherLocationUseCase usecase;
  MockGetWeatherLocationRepository mockGetWeatherLocationRepository;
  setUp(() {
    mockGetWeatherLocationRepository = MockGetWeatherLocationRepository();
    usecase = GetWeatherLocationUseCase(mockGetWeatherLocationRepository);
  });

  // test(
  //   'get weather location',
  // () async {
  //   when(mockGetWeatherLocationRepository.getWeatherLocation(any))
  //       .thenAnswer((_) async => Right(WeatherEntities(0)));
  // },
  // );
}
