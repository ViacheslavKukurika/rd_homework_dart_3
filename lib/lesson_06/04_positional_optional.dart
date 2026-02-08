/// Позиційні опціональні параметри — [param?], можуть бути пропущені

void positionalOptionalExample() {
  print('🔹 Позиційні опціональні параметри');

  // Один параметр
  greet('Марія');

  // Обидва параметри
  greet('Петро', 'вечора');

  // Без параметрів — використаються дефолти
  greet();
}

void greet([String? name, String? timeOfDay]) {
  final n = name ?? 'друже';
  final t = timeOfDay ?? 'дня';
  print('Доброго $t, $n!');
}

void main() => positionalOptionalExample();
