// ignore_for_file: lines_longer_than_80_chars

final List<String> names = ['John', 'Jane', 'Jim'];

void main() {
  if (names case [final String firstName, ...]) {
    print('First name: $firstName');
  }

  // if (names case final names when names.length > 2 && names.contains('John')) {
  //   print('Список імен з більш ніж 2 елементами і містить John');
  // }

  // switch (names) {
  //   case final names when names.length > 2 && names.contains('John'):
  //     print('Список імен з більш ніж 2 елементами і містить John');
  //   default:
  //     print('Список імен не містить John');
  // }

  // final [firstName, ...] = names;
  // print('First name: $firstName');
}

// void main() {
//   for (final User(name: name) in users) {
//     print('Name: $name');
//   }
// }

// class User {
//   User(this.name, this.age);

//   final String name;
//   final int age;
// }

// final users = [User('John', 20), User('Jane', 21), User('Jim', 22)];
