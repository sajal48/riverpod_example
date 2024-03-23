import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/example_3/city_enum.dart';
import 'package:riverpod_example/example_3/weather_repo.dart';

final currentCityProvider = StateProvider<City?>(
  (ref) => null,
);

final weatherProvider = FutureProvider<WeatherEmoji>(
  (ref) {
    final city = ref.watch(currentCityProvider);
    if (city != null) {
      return getWeather(city);
    } else {
      return '🤷';
    }
  },
);
