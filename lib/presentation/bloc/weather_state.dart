import 'package:equatable/equatable.dart';

import '../../data/model/model/weather_model.dart';

abstract class WeatherState extends Equatable {}

class WeatherStateInitial extends WeatherState {
  @override
  List<Object?> get props => [];
}

class WeatherStateLoading extends WeatherState {
  @override
  List<Object?> get props => [];
}

class WeatherStateDone extends WeatherState {
  final WeatherModel? weatherModel;
  WeatherStateDone(this.weatherModel);
  @override
  List<Object?> get props => [weatherModel];
}

class WeatherStateError extends WeatherState {
  @override
  List<Object?> get props => [];
}
