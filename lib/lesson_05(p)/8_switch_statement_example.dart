// 📍 Конструкція switch Statement
void switchStatementExample() {
  final day = 'середа';

  switch (day) {
    case 'понеділок':
      print('Початок тижня');
    case 'пʼятниця':
      print('Кінець робочого тижня');
    case 'субота':
    case 'неділя':
      print('Вихідний');
    default:
      print('Звичайний робочий день');
  }
}

void main() {
  switchStatementExample();
}
