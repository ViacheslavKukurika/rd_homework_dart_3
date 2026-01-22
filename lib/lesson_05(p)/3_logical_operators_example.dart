// 📍 Логічні оператори
void logicalOperatorsExample() {
  final hasMembership = true;
  final hasGuestPass = false;
  final gymIsOpen = true;

  final canEnterGym = (hasMembership || hasGuestPass) && gymIsOpen;
  final needsToBuyMembership = !hasMembership && !hasGuestPass;
  final cannotVisitGym = !gymIsOpen;

  print('Чи можу я зайти у спортзал? $canEnterGym');
  print('Чи потрібно купити абонемент? $needsToBuyMembership');
  print('Чи спортзал закритий? $cannotVisitGym');
}

void main() {
  logicalOperatorsExample();
}
