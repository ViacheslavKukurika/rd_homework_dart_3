// 📍 Оператори присвоєння
void assignmentOperatorsExample() {
  var number = 10;

  number += 5;
  print('Після додавання: $number');

  number -= 3;
  print('Після віднімання: $number');

  number *= 2;
  print('Після множення: $number');

  number ~/= 5;
  print('Після цілочисельного ділення: $number');

  number %= 3;
  print('Після знаходження залишку: $number');
}

void main() {
  assignmentOperatorsExample();
}
