import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/example_2/counter_provider.dart';

class Example2 extends ConsumerWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: ref.read(counterProvider.notifier).increment,
                child: const Icon(Icons.add)),
            Consumer(builder: (context, ref, child) {
              final count = ref.watch(counterProvider);
              final text = count.toString();
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(text),
              );
            }),
            TextButton(
                onPressed: ref.read(counterProvider.notifier).decremetn,
                child: const Icon(Icons.remove)),
          ],
        ),
      ),
    );
  }
}
