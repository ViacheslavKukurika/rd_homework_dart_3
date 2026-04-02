// Приклад 1 - await не блокує основний потік
// Приклад 2 - складна операція, яка блокує основний потік

Future<void> main() async {
  print('Синхронний код 1');

  Future.delayed(
    const Duration(seconds: 2),
    () => print('Асинхронний код 1 через 2 секунди'),
  );

  print('Синхронний код 2');

  // print('Синхронний код 3: fibonacci: ${fibonacci(45)}');

  Future.delayed(
    const Duration(seconds: 4),
    () => print('Асинхронний код 2 через 4 секунди'),
  );

  print('Синхронний код 4');
}

// важка сихронна операція
int fibonacci(int n) {
  if (n <= 1) return n;

  return fibonacci(n - 1) + fibonacci(n - 2);
}

// додаткова асинхронна операція
// Future<void> additionalMethod() async {
//   print('[fetchData]: start');
//   await Future<void>.delayed(const Duration(seconds: 1));
//   print('[fetchData]: after first delay');
//   await Future<void>.delayed(const Duration(seconds: 1));
//   print('[fetchData]: end');
// }
