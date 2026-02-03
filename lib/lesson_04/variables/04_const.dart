// Використання const — константа, відома на етапі компіляції
// Вбудовується в бінарник програми, зберігається один раз (канонізація)

void constExample() {
  const pi = 3.1415;
  const int daysInWeek = 7;
  // const now = DateTime.now(); // Помилка: const потребує значення на етапі компіляції

  print('Pi: $pi');
  print('Days in week: $daysInWeek');
}

void main() => constExample();
