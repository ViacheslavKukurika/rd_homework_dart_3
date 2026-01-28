// Ітерація по множині

void main() {
  final numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

  // Цикл for-in для ітерації по елементам
  for (final element in numbers) {
    print(element);
  }

  // Метод forEach для ітерації по елементам
  numbers.forEach(print);

  // Можна також використовувати where для фільтрації
  print('Even numbers:');
  numbers.where((e) => e % 2 == 0).forEach(print);

  // створення ногої множини, перебираючи іншу
  final newSet = numbers.map(
    (element) => element += element,
  );
  print(newSet);
}
