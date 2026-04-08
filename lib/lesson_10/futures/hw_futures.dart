void main() async {
  print('---------------Завдання 1---------------');

  final name = await fetchName();
  print('Мене звати $name');

  print('---------------Завдання 2---------------');

  final age = await fetchAge();
  final word = getWord(int.parse(age));

  print('Мені $age $word');

  print('---------------Завдання 3---------------');

  final stopwatch = Stopwatch();
  stopwatch.start();
  final fetchedName = await fetchName();
  final fetchedAge = await fetchAge();
  stopwatch.stop();
  final elapsed = stopwatch.elapsed;
  print('Отримано: "$fetchedName", "$fetchedAge". Час виконання: $elapsed');

  print('---------------Завдання 4---------------');

  stopwatch.reset();
  stopwatch.start();

  // Тут згадав про деструктуризацію

  final [parallelName, parallelAge] = await Future.wait([
    fetchName(),
    fetchAge(),
  ]);
  stopwatch.stop();
  final elapsed2 = stopwatch.elapsed;
  print('Отримано: "$parallelName", "$parallelAge". Час виконання: $elapsed2');

  print('---------------Завдання 5---------------');
}

Future<String> fetchName() async {
  await Future<void>.delayed(const Duration(seconds: 2));
  return 'Вячеслав';
}

Future<String> fetchAge() async {
  await Future<void>.delayed(const Duration(milliseconds: 1500));
  return '25';
}

String getWord(int age) {
  return switch ((age % 100, age % 10)) {
    (>= 11 && <= 14, _) => 'років',
    (_, 1) => 'рік',
    (_, 2 || 3 || 4) => 'роки',
    _ => 'років',
  };
}
