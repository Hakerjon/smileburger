import 'dart:io';

import 'carta_page.dart';
import 'chek_shablon.dart';

// void Cards(List<String> args) {
//   final homeCard = card();
//   homeCard.cardTelNumber = 998903113010;
// }

void telNumberEditing([String? yangiTelNumber]) {
  final homeCard = card();
  homeCard.cardTelNumber = 998903113010;
  String? joriyTelNumber;
  bool telRaqamChanged = true;
  print(MenuXoshiyali(matn1: "Joriy telefon raqamingizni kiriting: +"));
  stdout.write("+");
  joriyTelNumber = stdin.readLineSync();
  while (telRaqamChanged)
    if (joriyTelNumber == homeCard.cardTelNumber.toString()) {
      print(MenuXoshiyali(matn1: "Endi yangi raqamingnizni kiriting: +"));
      stdout.write("+");
      yangiTelNumber = stdin.readLineSync();
      print(MenuXoshiyali(
          matn1: "Telefon raqami o'zgardi: ${yangiTelNumber} ga"));
      yangiTelNumber = homeCard.cardTelNumber.toString();
      telRaqamChanged = false;
    } else {
      print(MenuXoshiyali(
          matn1: "Joriy telefon raqami noto'g'ri, iltimos qaytadan kiriting"));
      stdout.write("+");
      joriyTelNumber = stdin.readLineSync();
      // telRaqamChanged = true;
    }
  // return MenuXoshiyali(matn1: "Telefon raqami muvaffaqiyatli o'zgartirildi");
}

// void main(List<String> args) {
//   telNumberEditing();
// }
