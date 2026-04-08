import 'dart:math';

void main() async {
  for (var i = 0; i <= 20; i++) {
    await Future<void>.delayed(const Duration(milliseconds: 200));

    if (i == 10) {
      calculateAndPrintRandomValue();
    }

    print('from loop: $i');
  }
}

void calculateAndPrintRandomValue() {
  var random = 0;

  for (var j = 0; j < 100000000; j++) {
    random = Random().nextInt(1000);
  }
  print('random = $random');
}

/// 1. Простий синхронний цикл
/// 2. В циклі додаємо перевірку на число 10 і виклик 
/// calculateAndPrintRandomValue
/// 3. Поступово збільшуємо кількість цих ітерацій до моменту поки не почне
/// зависати основний цикл.
/// 4. Чи вирішить проблему додавання async
/// 4. Як це можна вирішити за допомогою ізолятів.
/// 5. Показати приклад на флаттері з отриманням даних з серверу
