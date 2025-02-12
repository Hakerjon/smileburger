import 'dart:io';

import 'carta_page.dart';
import 'chek_shablon.dart';

// void Cards(List<String> args) {
//   final homeCard = card();
//   homeCard.cardTelNumber = 998903113010;
// }

String telNumberEditing([String? yangiTelNumber]) {
  final homeCard = card();
  homeCard.cardTelNumber = 998903113010;
  print(MenuXoshiyali(matn1: "Joriy telefon raqamingizni kiriting: +"));
  stdout.write("+ ");
  String? joriyTelNumber = stdin.readLineSync();
  if (joriyTelNumber == homeCard.cardTelNumber) {
    print(joriyTelNumber);
    print(MenuXoshiyali(matn1: "Endi yangi raqamingnizni kiriting: +"));
    stdout.write("+");
    yangiTelNumber = stdin.readLineSync();
    yangiTelNumber = homeCard.cardTelNumber.toString();
  } else {
    print(MenuXoshiyali(matn2: joriyTelNumber = stdin.readLineSync()));
    stdout.write("+");
  }
  return 
   if (joriyTelNumber != homeCard.cardTelNumber) {

}

void main(List<String> args) {
  print(telNumberEditing());
}
