void main() async {
  print('---------------Завдання 6---------------');

  final iterableStream =
      Stream.fromIterable([3, 5, 7, 10, 12, 17, 134, 389, 10]);
  await for (final number in iterableStream) {
    print('Числа із стріма fromIterable (await for): $number');
  }

  print('----------------------------------------');

  /* Примітка для викладача: 
  Спочатку я просто написав наступний код:

  iterableStream.listen((value) => print('Метод "listen": $value'));

  Однак помітив, що у виводі в консолі рядок:
  "---------------Завдання 7---------------" розбиває поточне 6-те 
  завдання на 2 частини, тобто виводиться не в кінці 6-го завдання, як
  зазвичай, а всередині, він розмежовує вивід цикла "await for" і вивід
  "iterableStream.listen". Тож мені довелося гуглити і розбиратися. Ну я 
  і створив змінну "subscription", а також довелося писати рядок:

  "await subscription.asFuture<void>();",

  який змушує програму дочекатися завершення підписки на стрім, щоб пілся його
  завершення був друк розмежовувального прінта. Потім суворий лінтер почав 
  сваритися на мене. Як виявилося, він хотів, щоб в коді була написана команда,
  яка скасовує підписку на стрім. Через це написаний нижче наступний рядок:

  await subscription.cancel();
  */

  final subscription = iterableStream.listen((value) {
    print('Числа із стріма fromIterable (listen): $value');
  });
  await subscription.asFuture<void>();
  await subscription.cancel();

  print('---------------Завдання 7---------------');

  final periodicStream = Stream.periodic(
    const Duration(seconds: 1),
    (e) => e + 1,
  ).take(10);

  await for (final number in periodicStream) {
    print('$number...');
  }
}
