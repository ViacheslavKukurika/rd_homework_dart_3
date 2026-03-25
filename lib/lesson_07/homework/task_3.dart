import 'package:mocky/mocky.dart';

void main() {
  final randomNouns = Mocky.words(100);

  final nounsMap = Map.fromEntries(
    randomNouns.map((word) => MapEntry(word, word.length)),
  );

  final nounsMapFiltered = <String, int>{};
  for (final entry in nounsMap.entries) {
    if (entry.value % 2 == 0) {
      nounsMapFiltered[entry.key] = entry.value;
    }
  }
  print(nounsMapFiltered.keys);
}
