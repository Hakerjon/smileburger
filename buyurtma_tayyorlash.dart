import 'dart:io';
import 'UI.dart';
import 'home.dart';
// Global buyurtmalar ro'yxati (hamma funksiyalar undan foydalanadi)

// Menyular
Map<int, Map<String, double>> taomlar = {
  1: {"Gamburger": 35000.0},
  2: {"Nonburer": 28000.0},
  3: {"Lavash big": 34000.0},
  4: {"Xot-dog (bulochkaga)": 25000.0},
  5: {"Xot-dog (nonga)": 21000.0},
};

Map<int, Map<String, double>> ichimliklar = {
  1: {"Choy": 5000.0},
  2: {"Limon choy": 10000.0},
  3: {"Fanta 0.4L": 5000.0},
  4: {"Cola 0.4L": 5000.0},
  5: {"Cofe": 5000.0},
  6: {"Moxito": 15000.0},
};

Map<int, Map<String, double>> desertlar = {
  1: {"Napaleon": 20000.0},
  2: {"Snikers tort": 28000.0},
  3: {"Paxlava": 15000.0},
  4: {"Kruassan ": 12000.0},
  5: {"Pechenye italiano": 10000.0},
  6: {"Vanilinli tort": 19000.0},
};

// Buyurtma funksiyasi
void buyurtmaQilish(Map<int, Map<String, double>> menyu, String kategoriya) {
  while (true) {
    List<String> taomlarSpiskasi = [];
    menyu.forEach((raqam, taom) {
      String nomi = taom.keys.first;
      double narxi = taom.values.first;
      taomlarSpiskasi.add("$nomi - ${narxi} so'm");
    });
    shaxsiyUI(
        title: "--== 📜 $kategoriya Menyu ==--",
        buyurtmalaringiz: taomlarSpiskasi,
        tolovga: "0.Ortga qaytish");
    stdout.write(
        "\n➡️ Buyurtma qilish uchun raqamni kiriting (yoki '0' chiqish): ");
    String tanlov = stdin.readLineSync() ?? "";

    if (tanlov == "0") break; // Chiqish

    int? raqam = int.tryParse(tanlov);
    if (raqam != null && menyu.containsKey(raqam)) {
      String tanlanganTaom = menyu[raqam]!.keys.first;
      double narxi = menyu[raqam]!.values.first;

      buyurtmalar.add(tanlanganTaom);
      jamiNarx += narxi;
      print("✅ $tanlanganTaom buyurtmaga qo'shildi!");
    } else {
      print("❌ Noto'g'ri raqam! Iltimos, qayta kiriting.");
    }
  }
}

// Taom buyurtma funksiyasi
void taomBuyurtma() {
  buyurtmaQilish(taomlar, "FastFood");
}

// Ichimlik buyurtma funksiyasi
void ichimlikBuyurtma() {
  buyurtmaQilish(ichimliklar, "Ichimliklar");
}

// Desert buyurtma funksiyasi
void desertBuyurtma() {
  buyurtmaQilish(desertlar, "Desertlar");
}
