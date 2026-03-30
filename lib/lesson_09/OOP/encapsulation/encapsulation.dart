// ❌ БЕЗ інкапсуляції — всі поля публічні
class BankAccount {
  BankAccount({required this.owner, required this.balance, required this.pin});
  final String owner;
  double balance;
  final String pin;

  void deposit(double amount) {
    if (amount <= 0) throw ArgumentError('Сума має бути більше 0');
    balance += amount;
    print('Поповнення: +$amount. Баланс: $balance');
  }

  void withdraw(double amount, String pin) {
    if (pin != this.pin) throw Exception('Невірний PIN');
    if (amount > balance) throw Exception('Недостатньо коштів');
    balance -= amount;
    print('Зняття: -$amount. Баланс: $balance');
  }
}
