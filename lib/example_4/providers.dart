import 'package:hooks_riverpod/hooks_riverpod.dart';

const names = [
  'Alice',
  'Bob',
  'Charlie',
  'Larry',
  'Piyal',
  'Razon',
];

final tickerProvider = StreamProvider(
  (ref) => Stream.periodic(
      const Duration(
        seconds: 1,
      ),
      (x) => x + 1),
);

final namesProvider =
    StreamProvider((ref) => ref.watch(tickerProvider.stream).map(
          (count) => names.getRange(0, count),
        ));
