void main() {
  final a = 10;
  final b = 3.14159265359;

  final sum = a + b;
  final difference = a - b;
  final multiplication = a * b;
  final division = a / b;

  // print('-----------------------------------');
  // print('sum  -  $sum');
  // print('difference  -  $difference');
  // print('multiplication  -  $multiplication');
  // print('division  -  $division');
  // print('-----------------------------------');

  final simpleDivision = 12 / 5; // Звичайне ділення
  final integerDivision = 12 ~/ 5; // Цілочисельне ділення
  final remainder = 12 % 5; // Залишок від ділення
  // 5 * 2 = 10    12 - 10 = 2

  // print('-----------------------------------');
  // print('Звичайне ділення  -  $simpleDivision');
  // print('Цілочисельне ділення  -  $integerDivision');
  // print('Залишок від ділення  -  $remainder');
  // print('-----------------------------------');

  // Найчастіше використовуються для округлення чисел
  final someMoney = 25.5;
  final rounded = b.round();
  final ceiled = b.ceil();
  final floored = b.floor();
  final formatted = b.toStringAsFixed(2);

  // print('-----------------------------------');
  // print('rounded (Звичайне округлення) -  $rounded');
  // print('ceiled (Округлення вгору) -  $ceiled');
  // print('floored (Округлення вниз) -  $floored');
  // print('formatted (Округлення до 2 знаків після коми) -  $formatted');
  // print('-----------------------------------');
}
