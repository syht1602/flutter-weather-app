class Main {
  double? temp;
  double? tempMin;
  double? tempMax;
  double? feelsLike;
  int? pressure;
  int? humidity;
  double? dewPoint;

  Main({temp, tempMin, tempMax, feelsLike, pressure, humidity, dewPoint});

  Main.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    feelsLike = json['feels_like'];
    pressure = json['pressure'];
    humidity = json['humidity'];
    dewPoint = json['dew_point'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['temp'] = temp;
    data['temp_min'] = tempMin;
    data['temp_max'] = tempMax;
    data['feels_like'] = feelsLike;
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    data['dew_point'] = dewPoint;
    return data;
  }
}
