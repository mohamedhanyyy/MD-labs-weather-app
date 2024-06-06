// import 'package:dm_labs_weatherapp/model/model/weather_model.dart';
import 'package:dm_labs_weatherapp/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/model/model/weather_model.dart';

class WeatherInfoWidget extends StatelessWidget {
  final WeatherModel weatherModel;
  const WeatherInfoWidget({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
      children: [
        Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/weather.svg',width: 50,height: 50,),

              const Text(
                AppStrings.weatherCondition,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('${weatherModel.condition}')
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/wind.svg',width: 50,height: 50,),

              const Text(
                AppStrings.district,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('${weatherModel.location}')
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/weather2.svg',width: 50,height: 50,),

              const Text(
                AppStrings.maxTempreature,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('${weatherModel.temperatureMax} C')
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/weather2.svg',width: 50,height: 50,),

              const Text(
                AppStrings.minTempreature,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('${weatherModel.temperatureMin} C')
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/wind.svg',width: 50,height: 50,),

              const Text(
                AppStrings.windDirection,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('${weatherModel.windDirection}')
            ],
          ),
        ),
      ],
    );
  }
}
