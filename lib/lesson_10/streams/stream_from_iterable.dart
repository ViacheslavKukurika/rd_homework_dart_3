void main() async {
  final iterableStream = Stream.fromIterable([1, 2, 3]);

  await for (final value in iterableStream) {
    print('fromIterable: $value');
  }
}

// void main() async {
//   print('🔹 Stream.fromIterable');

//   const fullString = 'Привіт, мене звати Павло';
//   final chrList = fullString.split('');

//   final iterableStream = Stream.fromIterable(chrList);

//   await for (final value in iterableStream) {
//     stdout.write(value);
//     await Future<void>.delayed(const Duration(milliseconds: 100));
//   }
// }
