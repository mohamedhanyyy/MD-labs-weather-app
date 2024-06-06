import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class LightTheme {
  static ThemeData get getLightTheme => ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.primaryColor),
        primarySwatch: AppColors.primaryColor,
        primaryColor: AppColors.primaryColor,
    fontFamily: 'Cairo'
      );
}
