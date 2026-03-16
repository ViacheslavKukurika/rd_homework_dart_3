// ignore_for_file: lines_longer_than_80_chars

final List<String> names = ['John', 'Jane', 'Jim'];

void main() {
  // print('-----------------------------------');
  // if (names case [final String firstName, ...]) {
  //   print('First name: $firstName');
  // }
  // print('-----------------------------------');

  // print('-----------------------------------');
  // switch (names) {
  //   case []:
  //     print('Список імен порожній');
  //   case [final String name1, final String name2]:
  //     print('Список складається з 2 елементів: $name1 і $name2');

  //   case [final String str, _, _] when str.contains('Jo'):
  //     print('Перше імʼя $str');

  //   case [final String str, _, _]:
  //     print('Список імен з 3 елементами. Перший імʼя: $str');

  //   default:
  //     print('Cписок імен не підпадає під жодну з можливих конструкцій');
  // }
  // print('-----------------------------------');

  // print('-----------------------------------');
  // switch (names) {
  //   case final names when names.length > 2 && names.contains('John'):
  //     print('Список імен з більш ніж 2 елементами і містить John');
  //   default:
  //     print('Список імен не містить John');
  // }
  // print('-----------------------------------');

  // print('-----------------Деструктуризація------------------');

  // print('-----------------------------------');
  // final [firstName, ...] = names;
  // print('First name: $firstName');
  // print('-----------------------------------');

  // print('-----------------------------------');
  // final [firstName, ...rest, lastName] = names;
  // print('First name: $firstName, Last name: $lastName');
  // print('-----------------------------------');

  // print('-----------------------------------');
  // final (:name, :age) = (name: 'Марія', age: 25);
  // print('Name: $name, Age: $age');
  // print('-----------------------------------');

  // print('-----------------------------------');
  // for (final User(:name) in users) {
  //   print('Name: $name');
  // }
  // print('-----------------------------------');

  // print('-----------------------------------');
  // final User(:name) = users.first;
  // print('Name: $name');
  // print('-----------------------------------');
}

// void main() {
//   for (final User(name: name) in users) {
//     print('Name: $name');
//   }
// }

class User {
  User(this.name, this.age, this.email, this.phone);

  final String name;
  final int age;
  final String email;
  final String phone;
}

final users = [
  User('John', 20, 'john@example.com', '1234567890'),
  User('Jane', 21, 'jane@example.com', '0987654321'),
  User('Jim', 22, 'jim@example.com', '1122334455'),
  User('Jack', 23, 'jack@example.com', '1234567890'),
];
