import 'dart:io';
import 'UI.dart';
import 'loading_page.dart';
import 'home.dart';
import 'payment.dart';

promkodTekshiruv() {
  buyurtmalar.clear();
  shaxsiyUI(
      title: "Sizda promokod bormi?",
      buyurtmalaringiz: buyurtmalar,
      // matnsavatcha: "Buyurtmalaringiz",
      tolovga:
          "=> 1.Promokodni faollashtirish                => 0. Davom etish ");
  int? tanlovPromo = int.tryParse("${stdin.readLineSync()}");
  switch (tanlovPromo) {
    case 1:
      shaxsiyUI(
        title: "Promokodni faollashtirish",
        tolovga: "Iltimos,promokodingizni kiriting:",
        // matnsavatcha: "Buyurtmangiz:",
        buyurtmalaringiz: buyurtmalar,
      );
      String? joriyPromo = stdin.readLineSync();
      while (joriyPromo != promokod) {
        print("❌Promokod noto'g'ri, qaytadan kiriting..");
        joriyPromo = stdin.readLineSync();
      }
      shaxsiyUI(
          title: "✅ Promokod faollashtirildi",
          buyurtmalaringiz: buyurtmalar,
          // matnsavatcha: "Buyurtmalaringiz:",
          tolovga: "Sizda to'lov qilishda 20% foizlik chegirma bor");
      print("=> 0. Ortga qaytish");
      promokodActivated = true;
      tanlovPromo = int.tryParse("${stdin.readLineSync()}");
      switch (tanlovPromo) {
        case 0:
          tolovJarayoni(summa: jamiNarx);
        default:
          print(
              "Noto'g'ri raqamni kiritdingiz, mayli kechirdim, baribir ortga qaytish chorangiz yo'qku ;)");
          loading(
              kutishMatni: 'Iltimos kuting, server bilan aloqa tiklanmoqda');
          tolovJarayoni(summa: jamiNarx);
      }
    case 2:
      tolovJarayoni(summa: jamiNarx);
    default:
      tolovJarayoni(summa: jamiNarx);
  }
}
