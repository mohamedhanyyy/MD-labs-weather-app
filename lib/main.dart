 import 'package:dm_labs_weatherapp/presentation/bloc/weather_bloc.dart';
import 'package:dm_labs_weatherapp/presentation/screens/weather_screen.dart';
import 'package:dm_labs_weatherapp/utils/strings.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/services/dio_helper/dio_helper.dart';
import 'core/theme/light_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherBloc>(
      create: (BuildContext context) => WeatherBloc(),
      child:   MaterialApp(
        title: AppStrings.appTitle,
        theme: LightTheme.getLightTheme,
        debugShowCheckedModeBanner: false,
        home: const WeatherScreen(),
      ),
    );
  }
}
