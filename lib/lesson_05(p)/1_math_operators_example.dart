// 📍 Математичні оператори
void mathOperatorsExample() {
  final a = 10;
  final b = 3.4;
  print('Додавання: ${a + b}');
  print('Віднімання: ${a - b}');
  print('Множення: ${a * b}');
  print('Ділення: ${a / b}');
  print('Цілочисельне ділення: ${a ~/ b}');
  print('Залишок від ділення: ${a % b}');

  print('');
  print('Оруглення математичне: ${b.round()}');
  print('Оруглення вгору: ${b.ceil()}');
  print('Оруглення вниз: ${b.floor()}');
  print('Зручний вивід в консоль: ${b.toStringAsFixed(2)}');
}

void main() {
  mathOperatorsExample();
}
