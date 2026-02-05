// Оголошення змінної через var
// Тип визначається автоматично (type inference) за початковим значенням

void varExample() {
  var city = 'Kyiv'; // city має тип String
  var temperature = 22.5; // temperature має тип double

  // Можна змінювати значення змінної після оголошення
  city = 'Lviv';
  temperature = 20.0;

  //неможливо присвоїти інший тип змінній
  // city = 1;

  print('City: $city');
  print('Temperature: $temperature');
}

void main() => varExample();
