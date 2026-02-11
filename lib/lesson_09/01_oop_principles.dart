// ignore_for_file: lines_longer_than_80_chars

// ===== ПРИНЦИПИ ООП =====
//
// 4 основні принципи обʼєктно-орієнтованого програмування:
// 1. Абстракція — приховуємо складність, показуємо лише важливе
// 2. Інкапсуляція — захищаємо внутрішній стан обʼєкта
// 3. Наслідування — створюємо нові класи на основі існуючих
// 4. Поліморфізм — один інтерфейс, різна поведінка

// ===== 1. АБСТРАКЦІЯ =====
// Показуємо лише те, що потрібно користувачу класу.
// Деталі реалізації приховані.

abstract class Shape {
  double area(); // Що робити — зрозуміло, як — не важливо
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double area() => 3.14 * radius * radius;
}

class Rectangle extends Shape {
  Rectangle(this.width, this.height);
  final double width;
  final double height;

  @override
  double area() => width * height;
}

// ===== 2. ІНКАПСУЛЯЦІЯ =====
// Захищаємо дані від прямого доступу.
// В Dart приватні поля починаються з "_"

class BankAccount {
  BankAccount(this.owner, double balance) : _balance = balance;

  final String owner;
  double _balance; // приватне поле — доступ тільки всередині бібліотеки

  double get balance => _balance; // читати можна

  void deposit(double amount) {
    if (amount > 0) _balance += amount;
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    } else {
      print('❌ Недостатньо коштів');
    }
  }
}

// ===== 3. НАСЛІДУВАННЯ =====
// Дочірній клас отримує поля та методи батьківського

class Animal {
  Animal(this.name);
  final String name;

  void speak() => print('$name: ...');
}

class Dog extends Animal {
  Dog(super.name);

  @override
  void speak() => print('$name: Гав! 🐕');
}

class Cat extends Animal {
  Cat(super.name);

  @override
  void speak() => print('$name: Мяу! 🐈');
}

// ===== 4. ПОЛІМОРФІЗМ =====
// Один тип — різна поведінка залежно від конкретного обʼєкта

void makeAnimalSpeak(Animal animal) {
  animal.speak(); // Який саме speak() викличеться — залежить від типу обʼєкта
}

void main() {
  print('=== Абстракція ===');
  final shapes = <Shape>[Circle(5), Rectangle(4, 6)];
  for (final shape in shapes) {
    print('Площа: ${shape.area()}');
  }

  print('\n=== Інкапсуляція ===');
  final account = BankAccount('Олег', 1000);
  account.deposit(500);
  account.withdraw(200);
  print('Баланс: ${account.balance}');
  account.withdraw(5000); // ❌ Недостатньо коштів

  print('\n=== Наслідування + Поліморфізм ===');
  final animals = <Animal>[Dog('Барон'), Cat('Мурка'), Animal('Хтось')];
  for (final animal in animals) {
    makeAnimalSpeak(animal);
  }
}
