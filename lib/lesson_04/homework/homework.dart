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
 виводиться лише 1. Потім видалив зі списку, щоб лінтер не сварився.*/
}

/// Завдання 3: var, final, const
/// 1. Створи змінну через var — наприклад, місто проживання та
///  зміни її декілька разів (print після кожної зміни)
/// 2. Створи змінну через final — наприклад, країна
/// 3. Створи змінну через const — наприклад, кількість днів у тижні
void varFinalConst() {}

/// Завдання 4: Record
/// Створи іменований та не іменований (позиційний) record з твоїм
///  ім'ям та віком і виведи обидва поля.
void record() {}

/// Завдання 5: Nullable (опціонально)
/// Створи змінну String? nickname — може бути null або ім'я.
/// Виведи її через ??: якщо null — виведи "Немає", інакше — значення.
void nullable() {}
