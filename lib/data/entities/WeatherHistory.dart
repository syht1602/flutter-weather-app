import 'Main.dart';
import 'Rain.dart';
import 'Weather.dart';
import 'Wind.dart';

class WeatherHistory {
  String? cityName;
  double? lat;
  double? lon;
  Main? main;
  Wind? wind;
  Rain? rain;
  Clouds? clouds;
  List<Weather>? weather;
  int? visibility;
  int? dt;
  String? dtIso;
  int? timezone;

  WeatherHistory(
      {cityName,
      lat,
      lon,
      main,
      wind,
      rain,
      clouds,
      weather,
      visibility,
      dt,
      dtIso,
      timezone});

  WeatherHistory.fromJson(Map<String, dynamic> json) {
    cityName = json['city_name'];
    lat = json['lat'];
    lon = json['lon'];
    main = json['main'] != null ? Main.fromJson(json['main']) : null;
    wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    rain = json['rain'] != null ? Rain.fromJson(json['rain']) : null;
    clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(Weather.fromJson(v));
      });
    }
    visibility = json['visibility'];
    dt = json['dt'];
    dtIso = json['dt_iso'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['city_name'] = cityName;
    data['lat'] = lat;
    data['lon'] = lon;
    if (main != null) {
      data['main'] = main!.toJson();
    }
    if (wind != null) {
      data['wind'] = wind!.toJson();
    }
    if (rain != null) {
      data['rain'] = rain!.toJson();
    }
    if (clouds != null) {
      data['clouds'] = clouds!.toJson();
    }
    if (weather != null) {
      data['weather'] = weather!.map((v) => v.toJson()).toList();
    }
    data['visibility'] = visibility;
    data['dt'] = dt;
    data['dt_iso'] = dtIso;
    data['timezone'] = timezone;
    return data;
  }
}
