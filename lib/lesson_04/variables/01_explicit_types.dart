// Явне оголошення типу змінної
// Тип вказується явно — краща читабельність, перевірка на етапі компіляції

void explicitTypesExample() {
  int age = 25;
  String name = 'Anna';
  bool isStudent = true;
  Function(String) printHello = (String name) => print('Hello, $name!');

  print('Age: $age');
  print('Name: $name');
  print('Is Student: $isStudent');
  printHello('John');
}

void main() => explicitTypesExample();
