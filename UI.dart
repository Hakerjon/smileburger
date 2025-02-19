int qatorUzunligi = 80; // Terminal o'lchami
String devorcha = "⣿⣿";
int devorUzunligi = devorcha.length;
shaxsiyUI(
    {String? title,
    String? matn2,
    String? matn3,
    String? matn4,
    String? matn5,
    String? matnsavatcha,
    buyurtmalaringiz,
    String? tolovga}) {
  // Qatorni chiqarish uchun funksiya
  void chiqarish(String title) {
    int boshJoy = qatorUzunligi - title.length - 2 * devorUzunligi;
    int chapBoshJoy = boshJoy ~/ 2;
    int ongBoshJoy = boshJoy - chapBoshJoy;
    print(devorcha + " " * chapBoshJoy + title + " " * ongBoshJoy + devorcha);
  }

  void chiqarish2(String menyular) {
    int boshJoy = qatorUzunligi - menyular.length - 1 * devorUzunligi - 1;
    // int chapBoshJoy = boshJoy ~/ 2;
    // int ongBoshJoy = boshJoy - chapBoshJoy;
    print(devorcha + " " + menyular + " " * boshJoy + devorcha);
  }

  void chiqarish3(List<String> buyurtmalar) {
    for (int i = 0; i < buyurtmalar.length; i++) {
      String buyurtmaTaomNomi =
          buyurtmalar[i]; // Taom nomi string sifatida olinadi
      int buyurtmaTaomNomiUzunligi =
          buyurtmaTaomNomi.length; // Uning uzunligi olinadi
      int boshJoy =
          qatorUzunligi - buyurtmaTaomNomiUzunligi - 2 * devorUzunligi - 4;

      print(devorcha +
          " " +
          "${i + 1}. ${buyurtmalar[i]}" +
          " " * boshJoy +
          devorcha); // Har bir buyurtmani tartib raqami bilan chiqarish
    }
  }

  // int buyurtmaSoni = buyurtmalar.length;
  print(devorcha * (qatorUzunligi ~/ devorUzunligi));
  chiqarish(title ?? "");
  chiqarish("");
  if (matn2 == null) {
    chiqarish(matn2 ?? "");
    chiqarish(matn3 ?? "");
    chiqarish(matn4 ?? "");
    chiqarish(matn5 ?? "");
  } else {
    chiqarish2(matn2 ?? "");
    chiqarish2(matn3 ?? "  ");
    chiqarish2(matn4 ?? "  ");
    chiqarish2(matn5 ?? "  ");
  }
  List buyurtmaEmpty = [""];
  chiqarish("");
  chiqarish(matnsavatcha ?? "");
  chiqarish3(buyurtmalaringiz ?? buyurtmaEmpty);
  chiqarish(tolovga ?? "");
  // chiqarish3(buyurtmalaringiz);

  print(devorcha * (qatorUzunligi ~/ devorUzunligi));
}

main() {}
