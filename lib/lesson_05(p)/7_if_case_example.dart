// 📍 Умовні конструкції if-case (pattern matching)
void ifCaseExample() {
  final data = [1, 2, 3];

  // Перевірка типу та структури
  if (data case final List<int> list when list.length > 2) {
    print('Список цілих чисел з більш ніж 2 елементами: $list');
  }

  // Перевірка конкретних значень
  final point = (x: 5, y: 10);
  if (point case (x: final x, y: final y) when x > 0 && y > 0) {
    print('Точка в першому квадранті: ($x, $y)');
  }

  // Перевірка з деструктуризацією
  final user = {'name': 'Олексій', 'age': 25};
  if (user case {'name': final String name, 'age': final int age}
      when age >= 18) {
    print('Користувач $name є повнолітнім (вік: $age)');
  }
}

void main() {
  ifCaseExample();
}
