/// Іменовані опціональні параметри — {param?}, можна передавати частково

void namedOptionalExample() {
  print('🔸 Іменовані опціональні параметри');

  // Тільки name
  greet(name: 'Анна');

  // Тільки timeOfDay
  greet(timeOfDay: 'ночі');

  // Без параметрів
  greet();
}

void greet({String? name, String? timeOfDay}) {
  final n = name ?? 'друже';
  final t = timeOfDay ?? 'дня';
  print('Доброго $t, $n!');
}

void main() => namedOptionalExample();
