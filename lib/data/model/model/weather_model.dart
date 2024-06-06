class WeatherModel {
  num? temperatureCurrent;
  num? temperatureMax;
  num? temperatureMin;
  String? temperatureUnit;
  String? condition;
  num? windSpeed;
  String? windSpeedUnit;
  String? windDirection;
  String? location;

  WeatherModel(
      {this.temperatureCurrent,
        this.temperatureMax,
        this.temperatureMin,
        this.temperatureUnit,
        this.condition,
        this.windSpeed,
        this.windSpeedUnit,
        this.windDirection,
        this.location});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    temperatureCurrent = json['temperature_current'];
    temperatureMax = json['temperature_max'];
    temperatureMin = json['temperature_min'];
    temperatureUnit = json['temperature_unit'];
    condition = json['condition'];
    windSpeed = json['wind_speed'];
    windSpeedUnit = json['wind_speed_unit'];
    windDirection = json['wind_direction'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['temperature_current'] = temperatureCurrent;
    data['temperature_max'] = temperatureMax;
    data['temperature_min'] = temperatureMin;
    data['temperature_unit'] = temperatureUnit;
    data['condition'] = condition;
    data['wind_speed'] = windSpeed;
    data['wind_speed_unit'] = windSpeedUnit;
    data['wind_direction'] = windDirection;
    data['location'] = location;
    return data;
  }
}
