import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dateTimeProvider = Provider<DateTime>((ref) {
  return DateTime.now();
});

class Example1 extends ConsumerWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(dateTimeProvider);
    return Scaffold(
      body: Center(
        child: Text(date.toString()),
      ),
    );
  }
}