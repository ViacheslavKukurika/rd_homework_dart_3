/// Позиційні опціональні параметри — [param?], можуть бути пропущені

void greet([String? name, String? timeOfDay]) {
  final n = name ?? 'друже';
  final t = timeOfDay ?? 'дня';
  print('Доброго $t, $n!');
}

void positionalOptionalExample() {
  print('🔹 Позиційні опціональні параметри');

  // Один параметр
  greet('Марія');

  // Обидва параметри
  greet('Петро', 'вечора');

  // Без параметрів — використаються дефолти
  greet();
}

void main() => positionalOptionalExample();


/// Позиційні обов'язкові параметри — порядок важливий, всі треба передати

// void greet(String name, String timeOfDay) =>
//     print('Доброго $timeOfDay, $name!');

// double area(double w, double h) => w * h;

// void positionalRequiredExample() {
//   print("🔹 Позиційні обов'язкові параметри");

//   // Порядок: спочатку name, потім timeOfDay
//   greet('User', 'ранку');

//   // Функція повертає значення
//   print('Площа: ${area(5.0, 3.0)}');
// }

// void main() => positionalRequiredExample();
