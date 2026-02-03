// Примітивні типи даних у Dart
// int, double, String, bool

void primitivesExample() {
  // int — цілі числа
  int age = 30;
  // double — числа з плаваючою комою
  double height = 1.85;
  // String — текстові рядки
  String name = 'John Doe';
  // bool — логічні значення
  bool isActive = true;

  // Варіанти виведення int
  print('int: $age');
  print('int: ${age}');
  print('int: ${age.toString()}');
  print('int: ${age + 0}'); // вираз у ${}

  // Варіанти виведення double
  print('double: $height');
  print('double: ${height.toStringAsFixed(2)}');
  print('double: ${height.toStringAsFixed(0)}');

  // Варіанти виведення String
  print('String: $name');
  print('String: ${name.toUpperCase()}');
  print('String: ${name.length} символів');

  // Варіанти виведення bool
  print('bool: $isActive');
  print('bool: ${isActive.toString()}');
}

void main() => primitivesExample();
