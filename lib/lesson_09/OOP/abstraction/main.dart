import 'package:dart_course/lesson_09/OOP/abstraction/abstraction.dart';

void _run(Database db) {
  db.connect();
  db.save('{ user: Іван }');
  db.disconnect();
}

void main() {
  _run(MySqlDatabase());
  // print('---');
  // _run(MongoDatabase());
}
