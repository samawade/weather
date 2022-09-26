import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class WeatherView extends StatelessWidget {
  final Weather weather;

  const WeatherView({
    Key? key,
    required this.weather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "${weather.areaName}, ${weather.country} ",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w300,
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text:
                      "\n Updated: ${weather.date!.hour} : ${weather.date!.minute} ${weather.date!.timeZoneName}, ${weather.date}",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                  ),
                ),
                TextSpan(
                  text:
                      "\n\n ${weather.temperature!.celsius!.toStringAsFixed(1)}",
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: "\u00B0C",
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                TextSpan(
                  text:
                      "\n ${weather.weatherDescription} ${weather.weatherIcon}",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
          )
        ],
      ),
    );
  }
}
