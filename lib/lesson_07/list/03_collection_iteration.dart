// Ітерація по спискам

void main() {
  final list = List.generate(20, (index) => index);

  // Цикл for з індексом
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  // Цикл for-in для ітерації по елементам
  for (final element in list) {
    print(element);
  }

  // Метод forEach для ітерації по елементам
  list.forEach(print);
}
