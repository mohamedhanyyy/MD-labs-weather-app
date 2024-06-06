import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dm_labs_weatherapp/utils/end_points.dart';

class DioHelper {
  static BaseOptions opts = BaseOptions(
    baseUrl: EndPoints.baseUrl,
    headers: {'Accept': 'application/json'},
    receiveDataWhenStatusError: true,
    followRedirects: false,
    validateStatus: (status) {
      return status! <= 500;
    },
  );

  static Dio init() => Dio(opts);

  static Dio? dio = init();

  static Future<Response?> postData(
      {required String url, Map<String, dynamic>? data}) async {
    try {
      Response? response = await dio?.post(url, data: data);
      log('RESPONSE STATUS CODE:${response?.statusCode}');
      log('RESPONSE DATA:${response?.data}');
      log('RESPONSE REQUEST OPTIONS:${response?.requestOptions.data}');

      return response;
    } catch (e) {
      log('$e');

      return e is DioException ? e.response : null;
    }
  }

  static Future<Response?> getData(
      {required String url, Map<String, dynamic>? data}) async {
    try {
      Response? response = await dio?.get(url, queryParameters: data);
      log('RESPONSE STATUS CODE:${response?.statusCode}');
      log('RESPONSE DATA:${response?.data}');

      return response;
    } catch (e) {
      log('$e');

      return e is DioException ? e.response : null;
    }
  }
}
