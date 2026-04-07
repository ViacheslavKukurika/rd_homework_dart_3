void main() async {
  print('---------------Завдання 1---------------');
  final name = await fetchName();
  print('Мене звати $name');
  print('---------------Завдання 2---------------');
}

Future<String> fetchName() async {
  await Future<void>.delayed(const Duration(seconds: 2));
  return 'Вячеслав';
}
