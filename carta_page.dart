import 'chek_shablon.dart';
import 'dart:io';

class card {
  String? cardName;
  String? cardNumber;
  String? cardData;
  int? cardPassword;
  int? cardTelNumber;
  String? cardUserName;
  int? cardBalans;
}

void userBaza({
    String? kartaKimniki,
    String? kartaRaqami,
    String? kartaData,
    int? kartaPin,
    int? kartaTelefoni,
    int? kartaRaqamUzunligi}) {
  final userCard = card();
  kartaKimniki = userCard.cardName;
  kartaRaqami = userCard.cardNumber;
  kartaData = userCard.cardData;
  kartaPin = userCard.cardPassword;
  kartaTelefoni = userCard.cardTelNumber;
  kartaRaqamUzunligi = 16;
  kartaRaqami = "";
  while (kartaRaqami == null || kartaRaqami == '') {
    print(MenuXoshiyali(matn1: "Karta raqamingizni kiriting: "));
    kartaRaqami = stdin.readLineSync();
    // int kartaRaqamiUzunligi = kartaRaqami.length;
    while (kartaRaqami?.length != kartaRaqamUzunligi) {
      print(MenuXoshiyali(
          matn1:
              "Karta raqami 16ta raqamdan iborat bo'lishi shart, qaytadan kiriting: "));
      kartaRaqami = stdin.readLineSync();
    }
    print(MenuXoshiyali(matn1: "Tizimga yangi karta muvaffaqiyatli qo'shildi"));
  }
}
