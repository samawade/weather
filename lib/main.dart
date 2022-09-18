import 'package:flutter/material.dart';
import 'package:weather/screens/screens.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);
  final String appName = 'WeatherApp';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeScreen(title: appName),
    );
  }
}
