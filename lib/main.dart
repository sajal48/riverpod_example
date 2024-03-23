import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/example_1/example_1.dart';
import 'package:riverpod_example/example_2/example_2.dart';
import 'package:riverpod_example/example_3/example_3.dart';
import 'package:riverpod_example/example_4/example_4.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const Example4(),
    );
  }
}
