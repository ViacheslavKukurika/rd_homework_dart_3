// Урок 6: Функції в Dart

import 'package:dart_course/lesson_06/01_function_basics.dart' as p1;
import 'package:dart_course/lesson_06/02_positional_required.dart' as p2;
import 'package:dart_course/lesson_06/03_named_required.dart' as p3;
import 'package:dart_course/lesson_06/04_positional_optional.dart' as p4;
import 'package:dart_course/lesson_06/05_named_optional.dart' as p5;
import 'package:dart_course/lesson_06/06_mixed_parameters.dart' as p6;
import 'package:dart_course/lesson_06/07_default_values.dart' as p7;
import 'package:dart_course/lesson_06/08_return_values.dart' as p8;
import 'package:dart_course/lesson_06/09_arrow_functions.dart' as p9;
import 'package:dart_course/lesson_06/10_scope.dart' as p10;
import 'package:dart_course/lesson_06/11_best_practices.dart' as p11;
import 'package:dart_course/lesson_06/12_error_handling.dart' as p12;

void main() {
  print('=== 1. Основи функцій ===');
  p1.functionBasicsExample();

  print("\n=== 2. Позиційні обов'язкові ===");
  p2.positionalRequiredExample();
  print("\n=== 3. Іменовані обов'язкові ===");
  p3.namedRequiredExample();

  print('\n=== 4. Позиційні опціональні ===');
  p4.positionalOptionalExample();

  print('\n=== 5. Іменовані опціональні ===');
  p5.namedOptionalExample();

  print('\n=== 6. Змішані параметри ===');
  p6.mixedParametersExample();

  print('\n=== 7. Дефолтні значення ===');
  p7.defaultValuesExample();

  print('\n=== 8. Return ===');
  p8.returnValuesExample();

  print('\n=== 9. Стрілочні функції ===');
  p9.arrowFunctionsExample();

  print('\n=== 10. Область видимості ===');
  p10.scopeExample();

  print('\n=== 11. Найкращі практики ===');
  p11.bestPracticesExample();

  print('\n=== 12. Обробка помилок ===');
  p12.errorHandlingExample();
}
