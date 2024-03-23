import 'package:riverpod_example/example_3/city_enum.dart';

typedef WeatherEmoji = String;

Future<WeatherEmoji> getWeather(City city) {
  return Future.delayed(
    const Duration(seconds: 1),
    () =>
        {
          City.dhaka: '☀️',
          City.jessore: '🍃',
          City.rajshahi: '☔',
        }[city] ??
        '😵‍💫',
  );
}
