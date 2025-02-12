import 'chek_shablon.dart';
import 'dart:io';
import 'carta_page.dart';

void main(List<String> args) {
  final homeCard = card();
  homeCard.cardName = "Mansur Abdugaffarov";
  homeCard.cardPassword = 1234;
  print(MenuXoshiyali(matn1: "PIN-kodingizni kiriting:  _____"));
  String? joriyPin = stdin.readLineSync();
  if (joriyPin ==  homeCard.cardPassword ) {
    print("PIN to'g'ri! Xush kelibsiz!");
  } else {
    print(MenuXoshiyali(
        matn1: "Xatolik! Noto'g'ri PIN-kod!,qaytadan urinib ko'ring"));
    joriyPin = stdin.readLineSync();
    if (joriyPin ==  homeCard.cardPassword ) {
      print("PIN to'g'ri! Xush kelibsiz!");
    } else {
      print("Kartangiz bloklandi");
    }
  }
}
