import 'dart:io';

import 'chek_shablon.dart';

void balans({required int summa}) {
  print(MenuXoshiyali(matn1: "Chek => (Ok/No) "));
  String chekIndex = stdin.readLineSync() ?? "";
  if (chekIndex == "Ok") {
    chek(summa);
  } else {
    print(chekSuccess(chekMatn1: "Balans", chekMatn2: "$summa"));
  }
}

void chek(int sum) {
  print(chekSuccess(
      chekMatn1: "Sizning balansinggizdan $sum som yechildi",
      chekMatn2: "Umumiy summa : $sum"));
}