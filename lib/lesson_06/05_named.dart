/// Іменовані опціональні параметри — {param?}, можна передавати частково

void greet({String? name, String? timeOfDay}) {
  final n = name ?? 'друже';
  final t = timeOfDay ?? 'дня';
  print('Доброго $t, $n!');
}

void namedOptionalExample() {
  print('🔸 Іменовані опціональні параметри');

  // Тільки name
  greet(name: 'Анна');

  // Тільки timeOfDay
  greet(timeOfDay: 'ночі');

  // Без параметрів
  greet();
}

void main() => namedOptionalExample();


// /// Іменовані обов'язкові параметри — required, порядок не важливий
// ///
// void greet({required String name, required String timeOfDay}) =>
//     print('Доброго $timeOfDay, $name!');

// void createUser({
//   required String name,
//   required String email,
//   required int age,
// }) =>
//     print('Користувач: $name, $email, $age');

// void namedRequiredExample() {
//   print("🔸 Іменовані обов'язкові параметри");

//   // Виклик з іменами — порядок довільний
//   greet(name: 'Olena', timeOfDay: 'дня');
//   greet(timeOfDay: 'вечора', name: 'Петро');

//   // Зручно для багатьох параметрів
//   createUser(name: 'Іван', email: 'ivan@example.com', age: 25);
// }

// void main() => namedRequiredExample();
