import 'dart:io';
import 'dart:async';

kutishRejimi({required int kutishVaqti}) async {
  int totalTime = kutishVaqti; // 10 soniya kutish
  int totalProgress = kutishVaqti; // Progressning maksimal soni
  // String progress = "";  // Braille belgilarini saqlash uchun
  String loadingBar = ""; // Progress bar yaratish uchun

  List<String> brailleProgress = [
    "⠁",
    "⠂",
    "⠄",
    "⠈",
    "⠐",
    "⠠",
    "⠤",
    "⠰",
    "⠘",
    "⠸"
  ]; // Braille belgilaridan foydalanish

  print("Taom tayyorlanmoqda...");

  for (int i = 0; i < totalTime; i++) {
    loadingBar = "";

    // Progressni to'ldirish
    for (int j = 0; j < totalProgress; j++) {
      if (j < i + 1) {
        loadingBar += brailleProgress[totalProgress - 1]; // To'ldirilgan qism
      } else {
        loadingBar += " "; // Bo'sh joylar
      }
    }

    stdout.write("\r$loadingBar"); // Progressni chiqarish
    await Future.delayed(
      Duration(seconds: 1),
    ); // 1 soniya kutish
  }
}

loading({required String kutishMatni}) async {
  await slowPrint(
      kutishMatni, 130); // Har bir harfni 100ms kechikish bilan chiqarish
}

slowPrint(String text, int delay) async {
  for (int i = 0; i < text.length; i++) {
    stdout.write(text[i]); // Har bir harfni chiqarish
    await Future.delayed(
      Duration(milliseconds: delay),
    ); // Kechikish
  }
}
