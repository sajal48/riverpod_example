import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/example_2/counter_notifier.dart';

final counterProvider = StateNotifierProvider<Counter, int>(
  (ref) => Counter(),
);
