import 'dart:math';

void main() {
  final numbers = List.generate(100, (index) => Random().nextInt(101));
  print(numbers);
  print('65-й елемент списку: ${numbers[64]}');

  /* Я вивів 65-й елемент, використавши значення індексу '64', так
  як у звичайному людському відліку нумерація починається з 1, а не 
  з 0, як у рахунку програми. Так само і в наступній дії (замість
  50 використав 49*/

  numbers.insert(49, 1000000000);
  numbers.removeWhere((e) => e == 24 || e == 45 || e == 66 || e == 88);

  var sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sum += numbers[i];
    }
  }
  print('Сума чисел кратних 3-м в нашому списку "numbers" складає: $sum');

  final temp = <int>[];

  for (final element in numbers) {
    if (element % 2 == 0) {
      temp.add(element);
    }
  }
  print('Кількість чисел у списку "temp" складає: ${temp.length}');
}
