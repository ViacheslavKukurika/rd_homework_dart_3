void main() {
  primitives();
  collections();
  varFinalConst();
  record();
  nullable();
}

/// Створи змінні та виведи їх:

/// Завдання 1: Примітивні типи
/// - age (int) — твій вік
/// - height (double) — твій зріст у метрах
/// - name (String) — твоє ім'я
/// - isStudent (bool) — чи ти студент

final studentOrNot = isStudent ? 'так' : 'ні';
final isStudent = false;

/*Переніс сюди змінні, щоб лінтер не матюкався. Вони пов'язані, 
тож довелося переносити обидві. Спочатку вони були у тілі функції */

void primitives() {
  final age = 28;
  final height = 1.71;
  final name = 'Вячеслав';

  print('''
Привіт. Мене звати $name.
Мені $age років.
Мій зріст — $height м.
Чи вірне твердження, що я студент?
Думаю, що таки $studentOrNot.
''');
}

/// Завдання 2: Колекції
/// 1. List — 3 твої улюблені кольори
/// 2. Set — 3 унікальні оцінки, спробуй створити перевір print-ми,
///  що вони не виводяться
/// 3. Map — 3 предмети та їх оцінки

void collections() {
  final myFavoriteColors = ['Green', 'Blue', 'Black'];
  final uniqAssessment = {3, 1, 2};
  final subAssessment = {
    'Dart': 5,
    'Flutter': 5,
    'Основи ООП': 5,
  };
  print('''
Мої улюблені кольори: $myFavoriteColors.
Три випадкові унікальні оцінки: $uniqAssessment.
3 пари "предмет - оцінка": $subAssessment.
''');

/*Примітка: я використав повторювані числа у Set і помітив, що в консоль
 виводиться лише 1 з них. Потім видалив зі списку, щоб лінтер не сварився.*/
}

/// Завдання 3: var, final, const
/// 1. Створи змінну через var — наприклад, місто проживання та
///  зміни її декілька разів (print після кожної зміни)
/// 2. Створи змінну через final — наприклад, країна
/// 3. Створи змінну через const — наприклад, кількість днів у тижні

void varFinalConst() {
  var cityOfResidence = 'Cherkaasy';
  print('Місто 1: $cityOfResidence');
  cityOfResidence = 'Kyiv';
  print('Місто 2: $cityOfResidence');
  cityOfResidence = 'Odesa';
  print('Місто 3: $cityOfResidence');

  final country = 'Ukraine';
  const daysOfTheWeek = 7;
  print('Країна: $country');
  print('Кількість днів у тижні: $daysOfTheWeek');
}

/// Завдання 4: Record
/// Створи іменований та не іменований (позиційний) record з твоїм
///  ім'ям та віком і виведи обидва поля.

void record() {
  final personNamed = (name: 'Viacheslav', age: 28); // - іменований Record;
  final personPositional = ('Viacheslav', 28); // - позиційний рекорд;

  print('''
Рекорд з іменованими параметрами: $personNamed;
Рекорд з позиційними параметрами: $personPositional; 
''');

/* Тут стався цікавий момент в Record з іменованими параметрами:
1) Помітив, що в консоль вивелися навіть метадані: "age" та "name";
2) Помітив, що спочатку вивівся в консоль вік, 
а вже потім ім'я, хоча у коді порядок інший. Спробую вивести по-іншому.
*/

  print('Record (named): ${personNamed.name}, ${personNamed.age}');
  print('Record (positional): ${personPositional.$1}, ${personPositional.$2}');

// Спробую деструктуризацію, тобто створю новим способом 2 змінні і виведу їх:

  final (name: myName, age: myAge) = personNamed;
  print(myName);
  print(myAge);
}

/// Завдання 5: Nullable (опціонально)
/// Створи змінну String? nickname — може бути null або ім'я.
/// Виведи її через ??: якщо null — виведи "Немає", інакше — значення.

void nullable() {
  String? nickname;
  print(nickname ?? 'Немає');
}
