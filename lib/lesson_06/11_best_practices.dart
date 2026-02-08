/// Коли використовувати який тип параметрів

void bestPracticesExample() {
  print('📋 Найкращі практики');

  // Позиційні — для 1–3 простих, очевидних параметрів
  print('add: ${add(5, 3)}, sub: ${sub(10, 4)}');

  // Іменовані — для багатьох або складних конфігурацій
  user(name: 'Володимир', email: 'v@ex.com', isAdmin: true);

  // Змішані — гнучкість + зрозумілість
  log('Старт');
  log('Помилка', level: 'ERROR');
}

int add(int a, int b) => a + b;
int sub(int a, int b) => a - b;

void user({
  required String name,
  required String email,
  bool isAdmin = false,
  String? department,
}) =>
    print('$name ($email)${isAdmin ? " admin" : ""}');

void log(String msg, {String level = 'INFO', bool timestamp = false}) =>
    print(timestamp ? '[${DateTime.now()}] [$level] $msg' : '[$level] $msg');

void main() => bestPracticesExample();
