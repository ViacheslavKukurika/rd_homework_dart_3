// РІШЕННЯ ДОМАШНЬОГО ЗАВДАННЯ - УРОК 8
// Цей файл містить приклади рішень для викладача

void main() {
  print('=== РІШЕННЯ ДОМАШНЬОГО ЗАВДАННЯ ===\n');
  
  phoneBookSolution();
  storeInventorySolution();
  studentGradesSolution();
  wordStatisticsSolution();
  currencyConverterSolution();
  groupPeopleByAgeSolution();
}

// Завдання 1: Телефонна книга
void phoneBookSolution() {
  print('📱 Завдання 1: Телефонна книга');
  
  final phoneBook = <String, String>{
    'Мама': '+380501234567',
    'Тато': '+380671234567',
    'Сестра': '+380931234567',
    'Друг': '+380661234567',
    'Робота': '+380441234567'
  };
  
  print('Контакти: $phoneBook');
  
  // Пошук номера
  final name = 'Мама';
  if (phoneBook.containsKey(name)) {
    print('Номер $name: ${phoneBook[name]}');
  } else {
    print('Контакт $name не знайдено');
  }
  
  // Всі контакти
  print('Всі контакти:');
  phoneBook.forEach((name, phone) {
    print('$name: $phone');
  });
  
  print('');
}

// Завдання 2: Інвентар магазину
void storeInventorySolution() {
  print('🏪 Завдання 2: Інвентар магазину');
  
  final inventory = <String, int>{
    'Хліб': 15,
    'Молоко': 8,
    'Яйця': 25,
    'Масло': 5,
    'Сир': 12,
    'Цукор': 0
  };
  
  print('Початковий інвентар: $inventory');
  
  // Товари з кількістю > 10
  final highStock = inventory.entries
      .where((entry) => entry.value > 10)
      .map((entry) => entry.key)
      .toList();
  print('Товари з кількістю > 10: $highStock');
  
  // Продаж товару
  inventory['Молоко'] = inventory['Молоко']! - 3;
  print('Після продажу молока: ${inventory['Молоко']}');
  
  // Додавання нового товару
  inventory['Мед'] = 7;
  print('Додано новий товар: Мед');
  
  // Видалення товарів з кількістю 0
  inventory.removeWhere((product, quantity) => quantity == 0);
  print('Після видалення товарів з кількістю 0: $inventory');
  
  print('');
}

// Завдання 3: Оцінки студентів
void studentGradesSolution() {
  print('🎓 Завдання 3: Оцінки студентів');
  
  final studentGrades = <String, List<int>>{
    'Анна': [85, 92, 78, 95],
    'Петро': [76, 88, 82, 90],
    'Марія': [95, 98, 92, 96],
    'Іван': [68, 75, 72, 80]
  };
  
  print('Оцінки студентів: $studentGrades');
  
  // Середні оцінки
  final averages = <String, double>{};
  studentGrades.forEach((name, grades) {
    final average = grades.reduce((a, b) => a + b) / grades.length;
    averages[name] = average;
    print('Середня оцінка $name: ${average.toStringAsFixed(1)}');
  });
  
  // Найкраща середня оцінка
  final bestStudent = averages.entries
      .reduce((a, b) => a.value > b.value ? a : b);
  print('Найкращий студент: ${bestStudent.key} (${bestStudent.value.toStringAsFixed(1)})');
  
  // Додавання нової оцінки
  studentGrades['Анна']!.add(88);
  print('Нові оцінки Анни: ${studentGrades['Анна']}');
  
  print('');
}

// Завдання 4: Статистика слів
void wordStatisticsSolution() {
  print('📊 Завдання 4: Статистика слів');
  
  final text = "dart це мова програмування dart використовується для flutter dart легко вивчити";
  final words = text.toLowerCase().split(' ');
  
  final wordCount = <String, int>{};
  for (final word in words) {
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }
  
  print('Статистика слів: $wordCount');
  
  // Сортування за частотою
  final sortedWords = wordCount.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));
  
  print('Слова за частотою:');
  for (final entry in sortedWords) {
    print('${entry.key}: ${entry.value}');
  }
  
  final mostFrequent = sortedWords.first;
  print('Найчастіше слово: ${mostFrequent.key} (${mostFrequent.value} разів)');
  
  print('');
}

// Завдання 5: Конвертер валют
void currencyConverterSolution() {
  print('💱 Завдання 5: Конвертер валют');
  
  final exchangeRates = <String, double>{
    'USD': 37.5,
    'EUR': 40.2,
    'PLN': 9.1,
    'GBP': 46.8,
    'JPY': 0.25
  };
  
  print('Курси валют (до UAH): $exchangeRates');
  
  double convertCurrency(double amount, String from, String to) {
    if (from == 'UAH') {
      return amount / exchangeRates[to]!;
    } else if (to == 'UAH') {
      return amount * exchangeRates[from]!;
    } else {
      final uahAmount = amount * exchangeRates[from]!;
      return uahAmount / exchangeRates[to]!;
    }
  }
  
  final result = convertCurrency(100, 'USD', 'EUR');
  print('100 USD = ${result.toStringAsFixed(2)} EUR');
  
  // Оновлення курсу
  exchangeRates['USD'] = 38.0;
  print('Оновлений курс USD: ${exchangeRates['USD']}');
  
  print('Доступні валюти: ${exchangeRates.keys.join(', ')}');
  
  print('');
}

// Завдання 6: Групування даних
void groupPeopleByAgeSolution() {
  print('👥 Завдання 6: Групування за віком');
  
  final people = [
    {'name': 'Анна', 'age': 25},
    {'name': 'Петро', 'age': 15},
    {'name': 'Марія', 'age': 8},
    {'name': 'Іван', 'age': 30},
    {'name': 'Софія', 'age': 12},
  ];
  
  final ageGroups = <String, List<String>>{
    'дитина': [],
    'підліток': [],
    'дорослий': []
  };
  
  for (final person in people) {
    final name = person['name'] as String;
    final age = person['age'] as int;
    final category = getAgeCategory(age);
    ageGroups[category]!.add('$name ($age)');
  }
  
  print('Групування за віком:');
  ageGroups.forEach((category, people) {
    print('$category: ${people.length} осіб - ${people.join(', ')}');
  });
}

String getAgeCategory(int age) {
  if (age <= 12) return 'дитина';
  if (age <= 17) return 'підліток';
  return 'дорослий';
}
