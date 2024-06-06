import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

void errorHandler(Response? response) {
  if (response?.statusCode == 400) {
    Fluttertoast.showToast(msg: 'Bad request error');
  } else if (response?.statusCode == 500) {
    Fluttertoast.showToast(msg: 'Server error');
  } else if (response?.statusCode == 404) {
    Fluttertoast.showToast(msg: 'Not found');
  } else if (response?.statusCode == 401) {
    Fluttertoast.showToast(msg: 'UnAuthorized');
  }
}
