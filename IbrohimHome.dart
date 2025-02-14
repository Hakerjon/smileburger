import 'dart:io';
import 'balans_page.dart';
import 'carta_page.dart';
import 'chek_shablon.dart';
import 'error_page.dart';
import 'naqt_pul_yechish_page.dart';
import 'tel_raqam_ozgartirish_page.dart';
import 'parol_ozgartirish_page.dart';

int yechilganSumma = 0;
void main() {
  final userCard = BankCarta();
  userCard.cardName = "UzCard";
  userCard.cardNumber = "5614688516205415";
  userCard.cardData = "0724";
  userCard.cardPassword = 0607;
  userCard.cardBalans = 500000;

  print("Bankamatga hush kelibsiz");

  bool isValiedPassword = false;
  int userCardPassword = 0;

  while (!isValiedPassword) {
    print(MenuXoshiyali(matn1: "Karta parolingizni kiriting."));
    userCardPassword = int.tryParse("${stdin.readLineSync()}") ?? 0;

    if (userCardPassword == userCard.cardPassword) {
      isValiedPassword = true;
      print(MenuXoshiyali(matn1: "Kiritgan PIN kodingiz to'g'ri"));
    } else {
      print(MenuXoshiyali(matn1: "PIN kod hato"));
    }
  }

  print(MenuXoshiyali(
      matn1: "1 => Balans",
      matn2: "2 => Naqt pul yechish",
      matn3: "3 => SMS habarnoma",
      matn4: "4 => PIN kodni o'zgartirish",
      matn5: "5 => To'lov hizmatlari",
      matn6: "6 => Chiqish"));
  int bolimRaqami = int.tryParse("${stdin.readLineSync()}") ?? 0;

  if (bolimRaqami > 0 && bolimRaqami <= 6) {
    switch (bolimRaqami) {
      case 1:
        balans(summa: userCard.cardBalans!);
        break;
      case 2:
        pulYechish(summa: userCard.cardBalans!);
        userCard.cardBalans = userCard.cardBalans! - yechilganSumma;
        print(chekSuccess(chekMatn1: "Sizning hisob raqamingizda", chekMatn2: "${userCard.cardBalans} ming qoldi"));
        break;
      case 3:
        telNumberEditing();
        break;
      case 4:
        pinkod(0607);
        break;
      case 5:
        print(MenuXoshiyali(
            matn1: "To'lov qilish uchun bir tiyin pulingiz yo'q"));
        break;
      case 6:
        print(chekSuccess(
            chekMatn1: "Bizni xizmatlardan",
            chekMatn2: "foydalanganingiz uchun rahmat"));
        break;
      default:
        error();
    }
  } else {
    print(MenuXoshiyali(matn1: "Siz kiritgan bo'lim mavjud emas"));
  }
}
