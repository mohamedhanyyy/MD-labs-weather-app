 import 'package:dm_labs_weatherapp/presentation/bloc/weather_state.dart';
 import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/model/weather_model.dart';
import '../../data/repository/weather_repository.dart';

class WeatherBloc extends Cubit<WeatherState> {
  WeatherBloc() : super(WeatherStateInitial());
  WeatherRepository repository = WeatherRepositoryImpl();

  Future<void> getWeatherInformation(double lat, double lng) async {
    emit(WeatherStateLoading());
    WeatherModel? weatherModel = await repository.getWeatherData(lat, lng);
    if (weatherModel != null) {
      emit(WeatherStateDone(weatherModel));
    } else {
      emit(WeatherStateError());
    }
  }
}
