// ignore_for_file: lines_longer_than_80_chars, prefer_initializing_formals

// Конструктори в Dart
//
// Конструктор складається з:
// 1. Параметрів — вхідні дані
// 2. Списку ініціалізації (initializer list) — задає значення полям ДО виконання тіла
// 3. Тіла конструктора — виконується ПІСЛЯ ініціалізації, обʼєкт вже створений
//
// Якщо поля класу є публічними та мають ті самі імена, що й вхідні параметри,
// Dart дозволяє скоротити запис: Person(this.name, this.age)
//
// Ключове слово this використовується, щоб чітко вказати на поле обʼєкта,
//

/// Звичайний конструктор — повна версія з initializer list
class Person {
  Person(this.name, this.age) {
    // Тіло конструктора — обʼєкт вже створений
  }

  String name;
  int age;

  void sayHello() {
    print('Hi, my name is $name and I am $age years old.');
  }
}

/// Іменований конструктор
/// Дозволяє створити кілька конструкторів з різними назвами
class PersonNamed {
  PersonNamed.named(this.name, this.age) {
    print('👤 PersonNamed.named constructor has been called');
  }

  String name;
  int age;

  void sayHello() {
    print('Hi, my name is $name and I am $age years old.');
  }
}

void main() {
  print('=== Звичайний конструктор ===');
  final person1 = Person('John Doe', 30);
  person1.sayHello();

  print('\n=== Іменований конструктор ===');
  final person2 = PersonNamed.named('Mary Jane', 20);
  person2.sayHello();
}
