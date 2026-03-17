/// Область видимості — глобальна, локальна, блочна

// Глобальна змінна — доступна всюди в файлі
int _global = 42;

void scopeExample() {
  print('🔍 Область видимості змінних');

  final local = 'локальна';
  print('global=$_global, local=$local');

  // Змінні в блоці {} — тільки всередині блоку
  for (var i = 0; i < 2; i++) {
    final inBlock = 'блок $i';
    print(inBlock);
  }
  // print(inBlock); — помилка, недоступна тут

  modifyGlobal();
  print('global після зміни: $_global');
}

void modifyGlobal() {
  _global++;
}

void main() => scopeExample();
