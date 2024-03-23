import 'package:hooks_riverpod/hooks_riverpod.dart';

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() => state = state + 1;
  void decremetn() => state = state == 0 ? 0 : state - 1;
}
