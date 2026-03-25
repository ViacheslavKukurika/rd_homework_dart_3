import 'package:dart_course/lesson_07/homework/task_02/names_deepseek.dart';
import 'package:dart_course/lesson_07/homework/task_02/names_gpt.dart';

void main() {

  print('-----------------Спільні імена-----------------');

  final commonSet = ukrainianNamesGPT.intersection(ukrainianNamesDeepseek);
  print('К-ть спільних згенеров. імен(GPT + Deepseek): ${commonSet.length}');

  print('--------------------GPT------------------------');

  final uniqueGPT = ukrainianNamesGPT.difference(ukrainianNamesDeepseek);
  print('Імена, які згенерував лише GPT: $uniqueGPT');

  print('--------------------Deepseek--------------------');

  final uniqueDeepseek = ukrainianNamesDeepseek.difference(ukrainianNamesGPT);
   print('Імена, які згенерував лише Deepseek: $uniqueDeepseek');
}
