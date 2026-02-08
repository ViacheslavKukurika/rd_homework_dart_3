/// Функції що повертають значення — int, String, bool, String?

void returnValuesExample() {
  print('↩️ Функції що повертають значення');

  print('10 + 5 = ${add(10, 5)}');
  print("Повне ім'я: ${fullName('Іван', 'Петренко')}");
  print('Повнолітній: ${isAdult(20)}');

  // String? — може бути null
  print('Користувач: ${findUser('admin') ?? 'не знайдено'}');
}

int add(int a, int b) => a + b;
String fullName(String a, String b) => '$a $b';
bool isAdult(int age) => age >= 18;
String? findUser(String id) => id == 'admin' ? 'Адмін' : null;

void main() => returnValuesExample();
