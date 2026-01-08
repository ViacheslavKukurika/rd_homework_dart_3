import 'dart:math';

// УРОК 8: КАРТИ (MAP) В DART
//
// Карта (Map) - це колекція пар "ключ-значення"
// Думайте про це як про словник: слово (ключ) -> його значення
// Або як про телефонну книгу: ім'я (ключ) -> номер телефону (значення)
//
// Основні теми уроку:
// 1. Створення карти (різні способи)
// 2. Особливості карт (ключ-значення, унікальність ключів)
// 3. Ітерація по карті (for, for-in, forEach)
// 4. Зміна карти (додавання, видалення, зміна елементів)
// 5. Корисні методи роботи з картами
// 6. Операції з картами (об'єднання, перевірка наявності ключів)
//
// КОЛИ ВИКОРИСТОВУВАТИ КАРТИ:
// - Коли потрібно швидко знайти значення за ключем
// - Для зберігання пов'язаних даних (ім'я -> вік, товар -> ціна)
// - Коли порядок елементів не важливий (на відміну від List)

// ignore_for_file: equal_elements_in_set

void main() {
  print('=== УРОК 8: КАРТИ (MAP) ===\n');

  whatIsMap(); // Пояснення що таке карта
  creatingMap();
  mapCharacteristics();
  collectionIteration();
  changingMap();
  usefulMethods();
  mapOperations();
  practicalExamples(); // Практичні приклади
}

// Пояснення основної концепції карт
void whatIsMap() {
  print('🗺️ ЩО ТАКЕ КАРТА (MAP)?');
  print('Карта - це колекція пар "ключ -> значення"');
  print('Приклади з реального життя:');
  print('- Телефонна книга: Ім\'я -> Номер телефону');
  print('- Словник: Слово -> Переклад');
  print('- Магазин: Товар -> Ціна');
  print('- Студент: Ім\'я -> Оцінка\n');

  // Простий приклад
  final phoneBook = {
    'Мама': '+380501234567',
    'Тато': '+380671234567',
    'Друг': '+380931234567'
  };

  print('Приклад телефонної книги: $phoneBook');
  print('Номер мами: ${phoneBook['Мама']}');
  print('Номер незнайомця: ${phoneBook['Незнайомець']} (null - не знайдено)\n');
  print('=' * 50);
}

void creatingMap() {
  print('📝 СТВОРЕННЯ КАРТ\n');
  // Створення карти з явно вказаними парами ключ-значення
  final map1 = {'a': 1, 'b': 2, 'c': 3, 'd': 4, 'e': 5};
  print(map1);

  // Створення карти з дублікатами ключів (останній перезапише попередні)
  final map2 = {'a': 1, 'b': 2, 'a': 3, 'b': 4, 'c': 5};
  print(map2);

  // Створення карти з різними типами даних
  final person = {
    'name': 'John',
    'age': 30,
    'isStudent': false,
    'grades': [85, 90, 78, 92]
  };
  print(person);

  // Створення порожньої карти
  final emptyMap = <String, int>{};
  print(emptyMap);

  // Створення карти з List
  final list = List.generate(20, (index) {
    return Random().nextInt(index + 1);
  });
  print(list);
  print('--------');

  final map3 = list.asMap();
  print('map3: $map3');
  print('=' * 50);
}

void mapCharacteristics() {
  print('🔍 ОСОБЛИВОСТІ КАРТ\n');
  final scores = {'Alice': 95, 'Bob': 87, 'Charlie': 92, 'Diana': 88};

  // Доступ до значень за ключем
  print('Alice score: ${scores['Alice']}');
  print('Bob score: ${scores['Bob']}');

  // Доступ до неіснуючого ключа повертає null
  print('Eve score: ${scores['Eve']}');

  // Безпечний доступ з значенням за замовчуванням
  print('Eve score (with default): ${scores['Eve'] ?? 0}');

  // Перевірка наявності ключа
  print('Contains Alice: ${scores.containsKey('Alice')}');
  print('Contains Eve: ${scores.containsKey('Eve')}');

  // Перевірка наявності значення
  print('Contains score 95: ${scores.containsValue(95)}');
  print('Contains score 100: ${scores.containsValue(100)}');

  print('\n💡 ВАЖЛИВО:');
  print('- Ключі в карті унікальні (не можуть повторюватися)');
  print('- Значення можуть повторюватися');
  print('- Доступ до неіснуючого ключа повертає null');
}

void collectionIteration() {
  print('🔄 ІТЕРАЦІЯ ПО КАРТІ\n');
  final scores = {
    'Alice': 95,
    'Bob': 87,
    'Charlie': 92,
    'Diana': 88,
    'Eve': 91
  };

  // Ітерація по всіх парах ключ-значення
  print('All entries:');
  for (var entry in scores.entries) {
    print('${entry.key}: ${entry.value}');
  }

  // Ітерація тільки по ключах
  print('Keys:');
  for (var key in scores.keys) {
    print(key);
  }

  // Ітерація тільки по значеннях
  print('Values:');
  for (var value in scores.values) {
    print(value);
  }

  // Метод forEach для ітерації
  print('Using forEach:');
  scores.forEach((key, value) {
    print('$key: $value');
  });

  // Фільтрація елементів
  print('High scores (>90):');
  final newScores = scores.entries
      .where((entry) => entry.value > 90)
      .map((entry) => '${entry.key}: ${entry.value}')
      .toList();
  print('New scores: $newScores');

  // Створення нової карти, перебираючи іншу
  final doubledScores = scores.map((key, value) => MapEntry(key, value * 2));
  print('Doubled scores: $doubledScores');
  print('=' * 50);
}

void changingMap() {
  print('✏️ ЗМІНА КАРТИ\n');
  final scores = {'Alice': 95, 'Bob': 87, 'Charlie': 92};

  print('Initial scores: $scores');

  // Додавання нового елемента
  scores['Diana'] = 88;
  print('After adding Diana: $scores');

  // Зміна існуючого значення
  scores['Bob'] = 90;
  print('After updating Bob: $scores');

  // Додавання елемента, який вже існує (перезапише значення)
  scores['Alice'] = 98;
  print('After updating Alice: $scores');

  // Видалення елемента
  scores.remove('Bob');
  print('After removing Bob: $scores');

  // Видалення неіснуючого елемента (нічого не зміниться)
  scores.remove('Eve');
  print('After removing Eve (does not exist): $scores');

  // Додавання кількох елементів
  scores.addAll({'Eve': 91, 'Frank': 85, 'Grace': 93});
  print('After adding multiple entries: $scores');

  // Видалення елементів за умовою
  scores.removeWhere((key, value) => value < 90);
  print('After removing scores < 90: $scores');

  // Очищення карти
  // scores.clear();
  // print('After clearing: $scores');
  print('=' * 50);
}

void usefulMethods() {
  print('🛠️ КОРИСНІ МЕТОДИ\n');
  final emptyMap = <String, int>{};
  print('Empty map is empty: ${emptyMap.isEmpty}');

  final scores = {'Alice': 95, 'Bob': 87, 'Charlie': 92, 'Diana': 88};
  print('Scores map is not empty: ${scores.isNotEmpty}');

  print('Length of scores map: ${scores.length}');

  // Отримання всіх ключів
  print('Keys: ${scores.keys}');

  // Отримання всіх значень
  print('Values: ${scores.values}');

  // Отримання всіх пар ключ-значення
  print('Entries: ${scores.entries}');

  // Перевірка наявності ключа
  print('Contains key Alice: ${scores.containsKey('Alice')}');
  print('Contains key Eve: ${scores.containsKey('Eve')}');

  // Перевірка наявності значення
  print('Contains value 95: ${scores.containsValue(95)}');
  print('Contains value 100: ${scores.containsValue(100)}');

  // Безпечне отримання значення з значенням за замовчуванням
  print('Alice score: ${scores['Alice'] ?? 0}');
  print('Eve score: ${scores['Eve'] ?? 0}');

  // Отримання значення з можливістю видалення
  final removedValue = scores.remove('Bob');
  print('Removed Bob score: $removedValue');
  print('Scores after removal: $scores');

  // Додавання елемента тільки якщо ключ не існує
  scores.putIfAbsent('Bob', () => 85);
  print('After putIfAbsent Bob: $scores');

  // Додавання елемента тільки якщо ключ не існує (не додасться)
  scores.putIfAbsent('Alice', () => 100);
  print('After putIfAbsent Alice (already exists): $scores');
  print('=' * 50);
}

void mapOperations() {
  print('🔗 ОПЕРАЦІЇ З КАРТАМИ\n');
  final mapA = {'a': 1, 'b': 2, 'c': 3, 'd': 4};
  final mapB = {'c': 30, 'd': 40, 'e': 5, 'f': 6};

  print('Map A: $mapA');
  print('Map B: $mapB');

  // Об'єднання карт (останній значення перезапише попередні)
  final mergedMap = {...mapA, ...mapB};
  print('Merged map (A + B): $mergedMap');

  // Об'єднання карт (через створення нової карти)
  final mergedMap2 = {}
    ..addAll(mapA)
    ..addAll(mapB);
  print('Merged map (A + B) var2: $mergedMap2');
  print('=' * 50);
}

// Практичні приклади використання карт
void practicalExamples() {
  print('💼 ПРАКТИЧНІ ПРИКЛАДИ\n');

  // Приклад 1: Конфігурація програми
  final config = {
    'theme': 'dark',
    'language': 'uk',
    'notifications': true,
    'maxUsers': 100
  };
  print('Конфігурація програми: $config');

  // Приклад 2: Кешування результатів
  final cache = <String, String>{};

  String expensiveOperation(String input) {
    if (cache.containsKey(input)) {
      print('Знайдено в кеші: $input');
      return cache[input]!;
    }

    // Імітація складної операції
    final result = 'processed_$input';
    cache[input] = result;
    print('Обчислено та збережено в кеш: $input -> $result');
    return result;
  }

  expensiveOperation('data1');
  expensiveOperation('data2');
  expensiveOperation('data1'); // Буде взято з кешу

  // Приклад 3: Групування даних
  final students = ['Анна', 'Борис', 'Анна', 'Віктор', 'Анна', 'Борис'];
  final attendance = <String, int>{};

  for (final student in students) {
    attendance[student] = (attendance[student] ?? 0) + 1;
  }

  print('\nВідвідуваність студентів: $attendance');

  print('\n💡 КОЛИ ВИКОРИСТОВУВАТИ КАРТИ VS СПИСКИ:');
  print('Карти (Map):');
  print('- Швидкий пошук за ключем');
  print('- Унікальні ідентифікатори');
  print('- Конфігурації, налаштування');
  print('- Кешування, індексація');

  print('\nСписки (List):');
  print('- Порядок елементів важливий');
  print('- Дублікати дозволені');
  print('- Послідовна обробка');
  print('- Математичні операції');
}
