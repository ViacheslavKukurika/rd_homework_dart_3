/// Обробка помилок: try, catch, on, finally, throw

void errorHandlingExample() {
  print('⚠️ Обробка помилок');

  // catch — перехоплює будь-яку помилку
  try {
    div(10, 0);
  } catch (e) {
    print('catch: $e');
  }

  // on — тільки конкретний тип помилки
  try {
    validate(-5);
  } on ArgumentError catch (e) {
    print('ArgumentError: ${e.message}');
  }

  // throw — викидання помилки
  try {
    fail();
  } catch (e) {
    print('$e');
  }

  // finally — виконується завжди (cleanup)
  try {
    open();
  } catch (e) {
    print('$e');
  } finally {
    print('cleanup');
  }
}

int div(int a, int b) {
  if (b == 0) throw ArgumentError('Ділення на нуль');
  return a ~/ b;
}

void validate(int age) {
  if (age < 0 || age > 150) throw ArgumentError('Вік 0–150');
}

void fail() => throw FormatException('Помилка формату');
void open() => throw StateError('Ресурс недоступний');

void main() => errorHandlingExample();
