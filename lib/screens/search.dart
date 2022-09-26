import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/api/keys.dart';
import 'package:weather_app/wedgits/weather_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool _isLoading = false;
  Weather? _weather;

  WeatherFactory openWeather = WeatherFactory(api_key);

  String cityName = '';

  Future<void> getWeather() async {
    setState(() => _isLoading = !_isLoading);
    try {
      _weather = await openWeather.currentWeatherByCityName(cityName);
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
    setState(() => _isLoading = !_isLoading);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
      ),
      body: ModalProgressHUD(
        inAsyncCall: _isLoading,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                // onChanged: (value) {
                //   cityName = value;
                //   getWeather();
                // },
                onSubmitted: (value) {
                  cityName = value;
                  getWeather();
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Country or City Name.'),
              ),
            ),
            Expanded(
              child: _weather == null
                  ? Container()
                  : WeatherView(
                      weather: _weather!,
                    ),
            )
          ],
        ),
      ),
    );
  }
}
