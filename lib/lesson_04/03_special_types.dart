// Спеціальні типи: dynamic та var
// Коли використовувати та чому обережно з dynamic

void specialTypesExample() {
  // dynamic — змінна, яка може змінювати свій тип під час виконання
  dynamic anything = 'I am a String';
  // var — автоматичне визначення типу змінної за початковим значенням (Dart визначить String)
  var country = 'Ukraine';

  // dynamic — варіанти виведення
  print('dynamic: $anything');
  print('dynamic: ${anything}');
  print('dynamic: ${anything.toString()}');
  anything = 123;
  print('dynamic changed: $anything');

  // var — варіанти виведення
  print('var: $country');
  print('var: ${country}');
  print('var: ${country.toUpperCase()}');
}

void main() => specialTypesExample();
