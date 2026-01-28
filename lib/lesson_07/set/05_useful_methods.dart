// Корисні методи множин

void main() {
  final emptySet = <int>{};
  print('Empty set is empty: ${emptySet.isEmpty}');

  final numbers = {1, 2, 3, 4, 5};
  print('Numbers set is not empty: ${numbers.isNotEmpty}');

  print('Length of numbers set: ${numbers.length}');

  print('First element: ${numbers.first}');
  print('Last element: ${numbers.last}');

  // Знаходження першого елемента, що відповідає умові
  print('First even number: ${numbers.firstWhere((e) => e % 2 == 0)}');

  // Знаходження останнього елемента, що відповідає умові
  print('Last even number: ${numbers.lastWhere((e) => e % 2 == 0)}');

  // Перевірка чи хоча б один елемент відповідає умові
  print('Any even number: ${numbers.any((e) => e % 2 == 0)}');

  // Перевірка чи всі елементи відповідають умові
  print('All even numbers: ${numbers.every((e) => e % 2 == 0)}');

  // Перевірка чи містить множина елемент
  print('Contains 3: ${numbers.contains(3)}');

  // Зведення множини до одного значення (сума всіх елементів)
  print(
    'Sum of all numbers: ${numbers.reduce((previous, current) {
      return previous + current;
    })}',
  );

  // Зведення множини до одного значення з початковим значенням
  print(
    'Sum with initial value: ${numbers.fold<int>(0, (previous, current) {
      return previous + current;
    })}',
  );
}
