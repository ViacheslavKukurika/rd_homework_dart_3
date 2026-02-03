// Nullable змінні та Null Safety (Dart 2.12+)
//
// Null Safety — система типів, що запобігає помилкам null.
// За замовчуванням змінні non-nullable (не можуть бути null).
// Тип з ? — nullable: String? може бути String або null.

void nullableExample() {
  // Non-nullable — не може бути null
  String name = 'Anna';
  // name = null; // Помилка: String не приймає null

  // Nullable — може бути null
  String? nickname;
  print('nickname: $nickname'); // null

  nickname = 'Anka';
  print('nickname: $nickname');

  nickname = null; // OK
  print('nickname: $nickname');

  // Оператор ?? — значення за замовчуванням якщо null
  String displayName = nickname ?? 'Гість';
  print('displayName: $displayName');

  // Оператор ?. — безпечний виклик (повертає null якщо об'єкт null)
  String? maybeText;
  int? length = maybeText?.length; // null, не викликає помилку
  print('length: $length');

  maybeText = 'Hello';
  length = maybeText.length;
  print('length: $length');

  // Оператор ! — примусове розпакування (тільки якщо впевнений що не null)
  String? sure = 'Definitely';

  String unwrapped = sure!; // OK — sure не null
  print('unwrapped: $unwrapped');

  // ??= — присвоїти тільки якщо поточна змінна null
  String? optional = null;
  optional ??= 'default';
  print('optional: $optional');
}

void main() => nullableExample();
