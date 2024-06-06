 import 'package:dm_labs_weatherapp/utils/end_points.dart';

import '../../core/services/dio_helper/dio_helper.dart';
import '../../core/services/dio_helper/error_handler.dart';
import '../model/model/weather_model.dart';

abstract class WeatherRepository {
  Future<WeatherModel?> getWeatherData(double lat, double lng);
}

class WeatherRepositoryImpl implements WeatherRepository {
  @override
  Future<WeatherModel?> getWeatherData(double lat, double lng) async {
    final response =
        await DioHelper.getData(url: EndPoints.tempreatureNow, data: {'lat': lat, 'lon': lng});

    if (response?.statusCode == 200) {
      WeatherModel weatherModel = WeatherModel.fromJson(response?.data);
      return weatherModel;
    } else {
      errorHandler(response);
      return null;
    }
  }
}
