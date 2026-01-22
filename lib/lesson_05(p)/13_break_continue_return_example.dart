// 📍 Break, continue, return
void breakContinueReturnExample() {
  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    if (i == 4) {
      print('Досягнуто межі, вихід.');
      break;
    }
    print('Поточне значення: $i');
  }

  print('Завершення функції.');
  return;
}

void main() {
  breakContinueReturnExample();
}
