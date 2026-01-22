// 📍 Тернарний оператор
void ternaryOperatorExample() {
  final isWeekend = false;

  // Звичайний if-else
  String activity;
  if (isWeekend) {
    activity = 'Відпочиваю';
  } else {
    activity = 'Працюю';
  }
  print('Що я роблю сьогодні (if-else)? $activity');

  // Тернарний оператор
  final activityTernary = isWeekend ? 'Відпочиваю' : 'Працюю';
  print('Що я роблю сьогодні (тернарний оператор)? $activityTernary');
}

void main() {
  ternaryOperatorExample();
}
