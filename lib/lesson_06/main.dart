// ignore_for_file: dead_code, unreachable_from_main

void main() {
  // Основи функцій
  // functionBasicsExample();

  // 1. Позиційні обов'язкові параметри
  // positionalRequiredExample();

  // 2. Іменовані обов'язкові параметри
  // namedRequiredExample();

  // 3. Позиційні не обов'язкові параметри
  // positionalOptionalExample();

  // 4. Іменовані не обов'язкові параметри
  // namedOptionalExample();

  // 5. Обов'язкові та не обов'язкові разом
  // mixedParametersExample();

  // 6. Значення по дефолту
  // defaultValuesExample();

  // 7. Функції що повертають значення
  // returnValuesExample();

  // 8. Стрілочні функції
  // arrowFunctionsExample();

  // 9. Область видимості змінних
  // scopeExample();

  // 10. Коли що використовувати
  // bestPracticesExample();
}

// 📍 Основи функцій
void functionBasicsExample() {
  print('🔧 Основи функцій');

  // Функція без параметрів і без повернення
  sayHello();

  // Функція з параметром
  sayHelloTo('Марія');

  // Функція що повертає значення
  final result = multiply(4, 5);
  print('Результат множення: $result');

  // Збереження функції в змінній
  final greeting = getGreeting();
  print(greeting);
}

// Найпростіша функція
void sayHello() {
  print('Привіт!');
}

// Функція з одним параметром
void sayHelloTo(String name) {
  print('Привіт, $name!');
}

// Функція що повертає значення
int multiply(int a, int b) {
  return a * b;
}

// Функція що повертає String
String getGreeting() {
  return 'Доброго дня!';
}

// 📍 1. Позиційні обов'язкові параметри
void positionalRequiredExample() {
  print("🔹 Позиційні обов'язкові параметри");
  greetPositional('User', 'ранку');
  calculateArea(5.0, 3.0);
}

void greetPositional(String name, String timeOfDay) {
  print('Доброго $timeOfDay, $name!');
}

double calculateArea(double width, double height) {
  final area = width * height;
  print('Площа: $area');
  return area;
}

// 📍 2. Іменовані обов'язкові параметри
void namedRequiredExample() {
  print("\n🔸 Іменовані обов'язкові параметри");
  greetNamed(name: 'Olena', timeOfDay: 'дня');
  createUser(name: 'Іван', email: 'ivan@example.com', age: 25);
}

void greetNamed({required String name, required String timeOfDay}) {
  print('Доброго $timeOfDay, $name!');
}

void createUser({
  required String name,
  required String email,
  required int age,
}) {
  print('Створено користувача: $name, $email, вік: $age');
}

// 📍 3. Позиційні не обов'язкові параметри
void positionalOptionalExample() {
  print('\n🔹 Позиційні опціональні параметри');
  greetPositionalOptional('Марія');
  greetPositionalOptional('Петро', 'вечора');
  greetPositionalOptional();
}

void greetPositionalOptional([String? name, String? timeOfDay]) {
  final finalName = name ?? 'друже';
  final finalTime = timeOfDay ?? 'дня';
  print('Доброго $finalTime, $finalName!');
}

// 📍 4. Іменовані не обов'язкові параметри
void namedOptionalExample() {
  print('\n🔸 Іменовані опціональні параметри');
  greetNamedOptional(name: 'Анна');
  greetNamedOptional(timeOfDay: 'ночі');
  greetNamedOptional();
}

void greetNamedOptional({String? name, String? timeOfDay}) {
  final finalName = name ?? 'друже';
  final finalTime = timeOfDay ?? 'дня';
  print('Доброго $finalTime, $finalName!');
}

// 📍 5. Обов'язкові та не обов'язкові разом
void mixedParametersExample() {
  print('\n🔄 Змішані параметри');

  // Позиційні обов'язкові + позиційні опціональні
  sendMessage('Привіт!', 'Олексій');
  sendMessage('Як справи?', 'Марина', true);

  // Позиційні обов'язкові + іменовані
  bookTicket('Київ', 'Львів', priority: true, seatClass: 'business');
  bookTicket('Одеса', 'Харків');
}

void sendMessage(String message, String recipient, [bool isUrgent = false]) {
  final urgency = isUrgent ? '[ТЕРМІНОВО] ' : '';
  print('$urgencyПовідомлення для $recipient: $message');
}

void bookTicket(
  String from,
  String to, {
  bool priority = false,
  String? seatClass,
}) {
  var ticket = 'Квиток: $from → $to';
  if (priority) ticket += ' (пріоритет)';
  if (seatClass != null) ticket += ' [$seatClass]';
  print(ticket);
}

// 📍 6. Значення по дефолту
void defaultValuesExample() {
  print('\n⚙️ Значення по дефолту');

  // Позиційні з дефолтом
  printInfo('Тарас');
  printInfo('Оксана', 28);
  printInfo('Дмитро', 35, 'Київ');

  // Іменовані з дефолтом
  configureApp();
  configureApp(theme: 'dark');
  configureApp(theme: 'light', language: 'en', notifications: false);
}

void printInfo(String name, [int age = 18, String city = 'Невідомо']) {
  print("Ім'я: $name, Вік: $age, Місто: $city");
}

void configureApp({
  String theme = 'light',
  String language = 'uk',
  bool notifications = true,
}) {
  print('Налаштування: тема=$theme, мова=$language, сповіщення=$notifications');
}

// 📍 7. Функції що повертають значення
void returnValuesExample() {
  print('\n↩️ Функції що повертають значення');

  // Різні типи повернення
  final sum = addNumbers(10, 5);
  print('Сума: $sum');

  final fullName = createFullName('Іван', 'Петренко');
  print("Повне ім'я: $fullName");

  final isAdult = checkAge(20);
  print('Повнолітній: $isAdult');

  // Функція може повертати null
  final findUserResult = findUser('admin');
  print('Користувач: ${findUserResult ?? 'не знайдено'}');
}

int addNumbers(int a, int b) {
  return a + b;
}

String createFullName(String firstName, String lastName) {
  return '$firstName $lastName';
}

bool checkAge(int age) {
  return age >= 18;
}

String? findUser(String username) {
  if (username == 'admin') {
    return 'Адміністратор';
  }
  return null; // Користувач не знайдений
}

// 📍 8. Стрілочні функції (короткий синтаксис)
void arrowFunctionsExample() {
  print('\n🏹 Стрілочні функції');

  // Звичайні функції vs стрілочні
  print('Квадрат 5: ${square(5)}');
  print('Куб 3: ${cube(3)}');
  print('Подвоєння 7: ${doubleValue(7)}');

  // Використання в обчисленнях
  final numbers = <int>[1, 2, 3, 4, 5];
  final doubled = numbers.map(doubleValue).toList();
  print('Подвоєні числа: $doubled');
}

// Звичайна функція
int square(int x) {
  return x * x;
}

// Стрілочна функція (коротка форма)
int cube(int x) => x * x * x;
int doubleValue(int x) => x * 2;
bool isEven(int x) => x % 2 == 0;
String greet(String name) => 'Привіт, $name!';

// 📍 9. Область видимості змінних
void scopeExample() {
  print('\n🔍 Область видимості змінних');

  // Глобальна змінна (визначена поза функціями)
  print('Глобальна змінна: $globalCounter');

  // Локальна змінна функції
  final localMessage = 'Це локальна змінна';
  print(localMessage);

  // Параметри функції також локальні
  demonstrateScope('Тестове значення');

  // Змінні в блоках {}
  if (localMessage.isNotEmpty) {
    final blockVariable = 'Змінна в блоці if';
    print(blockVariable);
  }
  // print(blockVariable); // Помилка! Змінна недоступна поза блоком

  // Цикли також мають свою область видимості
  for (var i = 0; i < 3; i++) {
    final loopVariable = 'Ітерація $i';
    print(loopVariable);
  }
  // print(i); // Помилка! i недоступна поза циклом
}

// Глобальна змінна (доступна всюди в файлі)
int globalCounter = 42;

void demonstrateScope(String parameter) {
  // parameter доступний тільки в цій функції
  final localVar = 'Локальна змінна функції';

  print('Параметр: $parameter');
  print('Локальна: $localVar');
  print('Глобальна: $globalCounter');

  // Можемо змінювати глобальну змінну
  globalCounter++;
}

// 📍 10. Коли що використовувати - приклади
void bestPracticesExample() {
  print('\n📋 Найкращі практики');

  // Позиційні - для простих, очевидних параметрів
  print('Математичні операції:');
  print('Сума: ${add(5, 3)}');
  print('Різниця: ${subtract(10, 4)}');

  // Іменовані - для складних конфігурацій
  print('\nНалаштування користувача:');
  setupUser(
    name: 'Володимир',
    email: 'volodymyr@example.com',
    isAdmin: true,
    department: 'IT',
  );

  // Змішані - гнучкість + зрозумілість
  print('\nЛогування:');
  log('Система запущена');
  log('Помилка підключення', level: 'ERROR');
  log('Дебаг інформація', level: 'DEBUG', timestamp: true);
}

// Прості математичні функції - позиційні параметри
int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;

// Складна конфігурація - іменовані параметри
void setupUser({
  required String name,
  required String email,
  bool isAdmin = false,
  String? department,
}) {
  print('Користувач: $name ($email)');
  if (isAdmin) print('Права: Адміністратор');
  if (department != null) print('Відділ: $department');
}

// Гнучке логування - змішані параметри
void log(String message, {String level = 'INFO', bool timestamp = false}) {
  var output = '[$level] $message';
  if (timestamp) {
    output = '[${DateTime.now()}] $output';
  }
  print(output);
}

/*
📚 ПІДСУМОК:

1. ФУНКЦІЇ - це блоки коду, які можна викликати багато разів
2. ПАРАМЕТРИ - дані, які ми передаємо в функцію
3. ПОВЕРНЕННЯ - результат, який функція дає назад

ТИПИ ПАРАМЕТРІВ:
- Позиційні обов'язкові: func(a, b) - порядок важливий
- Іменовані обов'язкові: func({required a, required b}) - порядок не важливий
- Опціональні: можуть бути пропущені
- З дефолтом: мають значення за замовчуванням

КОЛИ ЩО ВИКОРИСТОВУВАТИ:
- 1-3 простих параметри → позиційні
- Багато параметрів або складна логіка → іменовані
- Стрілочні функції → для простих обчислень в один рядок
- Звичайні функції → для складної логіки

ОБЛАСТЬ ВИДИМОСТІ:
- Змінні існують тільки там, де вони визначені
- Параметри функції - локальні для цієї функції
- Глобальні змінні доступні всюди (але краще уникати)
*/
