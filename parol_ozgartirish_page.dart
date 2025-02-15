import 'dart:io';
import 'IbrohimHome.dart';
import 'carta_page.dart';
import 'chek_shablon.dart';

int? pinkod(int? pinkodDefault) {
  final homeCard = BankCarta();
  homeCard.cardName = "Mansur Abdugaffarov";
  // pinkodDefault = 0607;
  print(MenuXoshiyali(matn1: "Joriy PIN-kodingizni kiriting:  _____"));
  int joriyPin = int.tryParse("${stdin.readLineSync()}") ?? 0;
  int pinBlok = 3;

  while (joriyPin != pinkodDefault) {
    print(MenuXoshiyali(
        matn1: "Xatolik! Noto'g'ri PIN-kod!,qaytadan urinib ko'ring"));
    joriyPin = int.tryParse("${stdin.readLineSync()}") ?? 0;
    pinBlok--;
    print(" Sizda ${pinBlok}ta urinish qoldi");
    if (joriyPin == pinkodDefault) {
      print(MenuXoshiyali(
          matn1: "PIN kod to'g'ri! Endi yangi PIN kodingizni kiriting!"));
      joriyPin = int.tryParse("${stdin.readLineSync()}") ?? 0;
      pinkodDefault = joriyPin;
      main();
    } else if (pinBlok <= 0) {
      print(MenuXoshiyali(
          matn1: "3 martalik xato urinishdan so'ng Kartangiz bloklandi!",
          matn7: "=> 7.Chiqish"));
      int bolimRaqami = int.tryParse("${stdin.readLineSync()}") ?? 0;
      if (bolimRaqami > 0 && bolimRaqami <= 7) {
        switch (bolimRaqami) {
          case 7:
            main();
            break;
          default:
            print(MenuXoshiyali(matn1: "Siz kiritgan bo'lim mavjud emas"));
            break;
        }
      } else {
        print(MenuXoshiyali(matn1: "Siz kiritgan bo'lim mavjud emas"));
        break;
      }
    }
  }
  return pinkodDefault = joriyPin;
}
