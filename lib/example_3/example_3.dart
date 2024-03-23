import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/example_3/city_enum.dart';
import 'package:riverpod_example/example_3/providers.dart';

class Example3 extends ConsumerWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final curentWeather = ref.watch(weatherProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      body: Column(
        children: [
          curentWeather.when(
              data: (data) => Text(
                    data,
                    style: const TextStyle(fontSize: 40),
                  ),
              error: (_, __) => const Text(
                    'Error 🥲',
                    style: TextStyle(fontSize: 40),
                  ),
              loading: () => const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  )),
          Expanded(
            child: ListView.builder(
              itemCount: City.values.length,
              itemBuilder: (_, index) {
                final city = City.values[index];
                final isSelected = city == ref.watch(currentCityProvider);
                return ListTile(
                  title: Text(city.toString()),
                  trailing: isSelected ? const Icon(Icons.check) : null,
                  onTap: () =>
                      ref.read(currentCityProvider.notifier).state = city,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
