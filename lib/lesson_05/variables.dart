// Оголошення та ініціалізація змінних у Dart

void main() {
  // Явне оголошення типу змінної
  int age = 25;
  String name = 'Anna';
  bool isStudent = true;

  print('Age: $age');
  print('Name: $name');
  print('Is Student: $isStudent');

  // Оголошення змінної через var (тип визначається автоматично)
  var city = 'Kyiv'; // city має тип String
  var temperature = 22.5; // temperature має тип double

  print('City: $city');
  print('Temperature: $temperature');

  // Використання final — значення присвоюється один раз
  final country = 'Ukraine';
  // country = 'Poland'; // Помилка: не можна змінити значення final

  print('Country: $country');

  // Використання const — константа, що встановлюється під час компіляції
  const pi = 3.1415;
  const int daysInWeek = 7;

  print('Pi: $pi');
  print('Days in week: $daysInWeek');

  // Приклад з late змінними
  String greeting;
  final creationDate = DateTime.now();
  const appName = 'MyApp';

  greeting = 'Hi'; // OK
  // creationDate = DateTime.now(); // Помилка
  // appName = 'NewApp'; // Помилка

  print('Greeting: $greeting');
  print('Creation date: $creationDate');
  print('App name: $appName');
}
