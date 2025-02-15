import 'dart:io';

import 'IbrohimHome.dart';
import 'chek_shablon.dart';
import 'error_page.dart';

void balans({required int summa}) {
  print(MenuXoshiyali(matn1: "Chek => (Ok/No) "));
  String chekIndex = stdin.readLineSync() ?? "";
  if (chekIndex == "Ok") {
    chek(summa);
  } else {
    print(MenuXoshiyali(
        matn1: "Balans", matn3: "$summa", matn7: "=> 7.Bosh menyu"));
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
    }
  }
}

void chek(int sum) {
  print(chekSuccess(
      chekMatn1: "Sizning balansinggizdan $sum som yechildi",
      chekMatn2: "Umumiy summa : $sum"));
}
