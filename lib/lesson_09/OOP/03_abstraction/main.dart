import 'package:dart_course/lesson_09/OOP/03_abstraction/abstraction.dart';

void _run(Database db) {
  db.connect();
  db.save('{ user: Іван }');
  db.disconnect();
}

void main() {
  _run(MySqlDatabase());
//переробити іншу базу даних
}
