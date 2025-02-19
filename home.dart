import 'dart:io';
import 'UI.dart';
import 'loading_page.dart';
import 'dart:async';
import 'buyurtma_tayyorlash.dart';
import 'payment.dart';
import 'promokod.dart';

List<String> buyurtmalar = [];
double jamiNarx = 0;
int yechilganSumma = 0;
// List<String> buyurtmalar = [];
Future<void> main() async {
  await loading(kutishMatni: '--==Smile burger==-- Xush kelibsiz');
  // await kutishRejimi();
  while (true) {
    shaxsiyUI(
        title: "🍔 Smile burger buyurtma tizimi ishga tushdi!",
        matn2: "1️⃣ Taomlar",
        matn3: "2️⃣ Ichimliklar",
        matn4: "3️⃣ Desertlar",
        matn5: "0️⃣ Buyurtmani tugatib to'lovga o'tish",
        matnsavatcha: "--== 🛒 Sizning Buyurtmalaringiz ==--",
        buyurtmalaringiz: buyurtmalar);

    stdout.write("\n📌 Raqamni tanlang: ");
    String tanlov = stdin.readLineSync() ?? "";

    if (tanlov == "0") break;
    if (tanlov == "1")
      taomBuyurtma();
    else if (tanlov == "2")
      ichimlikBuyurtma();
    else if (tanlov == "3")
      desertBuyurtma();
    else
      print("❌ Noto'g'ri tanlov! Iltimos, qayta urining.");
  }
  String jamiBuyurtmaConsolga() {
    // String natija = buyurtmalar.map((taom) => "- $taom").join("\n");
    return "💰 Jami narx: ${jamiNarx.toStringAsFixed(0)} so'm";
  }

  // Yakuniy buyurtma ro'yxati
  print(shaxsiyUI(
      title: "--== 🛒 Sizning yakuniy Buyurtmangiz ==--",
      matnsavatcha: jamiBuyurtmaConsolga(),
      buyurtmalaringiz: buyurtmalar,
      tolovga: "=> 0. Buyurtmani tasdiqlash"));

  int? tanlov = int.tryParse("${stdin.readLineSync()}");

  if (tanlov == 0) {
    promkodTekshiruv();
  } else
    print("❌ Noto'g'ri tanlov! Iltimos, qayta urining.");
}
