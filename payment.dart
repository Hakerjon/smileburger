import 'dart:io';
import 'UI.dart';
import 'loading_page.dart';
import 'home.dart';
import 'promokod.dart';

final userkartasi = 860086008600;
int userBalansi = 100000;
const userSmskod = 1234;
final promokod = "Salom";
bool promokodActivated = false;

//Promokodni tekshirish

void tolovJarayoni({required double summa}) {
  buyurtmalar.clear();
  //Karta raqamini tasdiqlash jarayoni
  if (promokodActivated) {
    double chegirmaNarx = summa * 0.2;
    double chegirildi = summa - chegirmaNarx;
    shaxsiyUI(
        title: "To'lov qilish uchun karta raqamingizini kiriting",
        // matnsavatcha: "Buyurtmalaringiz:",
        buyurtmalaringiz: buyurtmalar,
        tolovga:
            "Jami to'lov: ${summa.toInt()} so'm, => Chegirmadan so'ng ${chegirildi.toInt()} so'm");
    summa = chegirildi;
  } else {
    shaxsiyUI(
        title: "To'lov qilish uchun karta raqamingizini kiriting",
        // matnsavatcha: "Buyurtmalaringiz:",
        buyurtmalaringiz: buyurtmalar,
        tolovga: " Jami to'lov: $summa ");
  }

  int? userJoriyKartasi = int.tryParse("${stdin.readLineSync()}");
  while (userJoriyKartasi != userkartasi) {
    print("❌ Karta raqami noto'g'ri, qaytadan kiriting..");
    userJoriyKartasi = int.tryParse("${stdin.readLineSync()}");
  }

  //SMs kodni tasdiqlash jarayoni
  shaxsiyUI(
    title: "To'lovni tasdiqlash",
    // matnsavatcha: "Buyurtmalaringiz:",
    buyurtmalaringiz: buyurtmalar,
    tolovga: "Telefon raqamingizga sms orqali borgan kodni kiriting",
  );
  int? joriySmsKod = int.tryParse("${stdin.readLineSync()}");
  while (userSmskod != joriySmsKod) {
    print("❌SMS kod  noto'g'ri, qaytadan kiriting..");
    joriySmsKod = int.tryParse("${stdin.readLineSync()}");
  }

  shaxsiyUI(
      title: "To'lov",
      // matnsavatcha: "Buyurtmalaringiz:",
      buyurtmalaringiz: buyurtmalar,
      tolovga: "To'lov jarayoni amalga oshirilmoqda, kuting");

  if (summa <= userBalansi) {
    userBalansi -= summa.toInt();
    shaxsiyUI(
        title: "✅ To'lov muvaffaqiyatli amalga oshirildi",
        buyurtmalaringiz: buyurtmalar,
        matnsavatcha: "Buyurtmangiz tayyorlanmoqda, iltimos kuting");
    kutishRejimi(kutishVaqti: 10);
  } else {
    shaxsiyUI(
        title: "To'lov",
        matnsavatcha: "Buyurtmalaringiz bekor qilindi:",
        buyurtmalaringiz: buyurtmalar,
        tolovga:
            "❌ To'lovni amalga oshirish uchun hisobingizda mablag' yetarli emas");
  }
}
