import 'package:dm_labs_weatherapp/core/mappers.dart';
import 'package:dm_labs_weatherapp/presentation/widgets/weather_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/strings.dart';
import '../bloc/weather_bloc.dart';
import '../bloc/weather_state.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  late WeatherBloc weatherBloc;
  LocationModel? locationModel;
  @override
  void initState() {
    super.initState();
    weatherBloc = context.read<WeatherBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appBarTitle),
        centerTitle: true,
        leading: const Icon(Icons.sunny),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: DropdownButton(
                  underline: const SizedBox.shrink(),
                  isExpanded: true,
                  hint: Text(locationModel?.name ?? AppStrings.selectTown),
                  items: locations
                      .map((e) => DropdownMenuItem<LocationModel>(
                          value: e, child: Text(e.name!)))
                      .toList(),
                  value: locationModel,
                  onChanged: (val) {
                    locationModel = val;
                    setState(() {});
                    weatherBloc.getWeatherInformation(val!.lat!, val.lon!);
                  }),
            ),
            BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
              if (state is WeatherStateLoading) {
                return const Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Center(child: CircularProgressIndicator.adaptive()),
                );
              } else if (state is WeatherStateDone) {
                return WeatherInfoWidget(weatherModel: state.weatherModel!);
              }
              return const Padding(
                  padding: EdgeInsets.only(top: 150),
                  child: Text(AppStrings.noData));
            })
          ],
        ),
      ),
    );
  }
}
