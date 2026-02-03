// Використання final — значення присвоюється один раз
// Обчислюється під час виконання, зберігається в оперативній пам'яті (heap/stack)

void finalExample() {
  final country = 'Ukraine';
  final now = DateTime.now(); // OK — обчислюється під час виконання
  // country = 'Poland'; // Помилка: не можна змінити значення final

  print('Country: $country');
  print('Now: $now');
}

void main() => finalExample();
