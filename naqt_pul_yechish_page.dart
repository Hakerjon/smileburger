import 'dart:io';
import 'ibrohimHome.dart';
import 'balans_page.dart';
import 'chek_shablon.dart';

void pulYechish({required int summa}) {
  print(
    MenuXoshiyali(
      matn1: "1 => 50 000 ming",
      matn2: "2 => 100 000 ming",
      matn3: "3 => 150 000 ming",
      matn4: "4 => 200 000 ming",
      matn5: "5 => 250 000 ming",
      matn6: "6 => 300 000 ming",
      matn7: "7 => Boshqa summa",
    ),
  );

  bool natija = false;
  int? bolim;

  while (!natija) {
    print("Kerakli miqdorni kiriting");
    bolim = int.tryParse("${stdin.readLineSync()}") ?? 0;

    if (bolim > 0 && bolim <= 7) {
      natija = true;
    } else {
      print("Qandaydir hatolik mavjud");
    }
  }

  switch (bolim) {
    case 1:
      yechilganSumma = 50000;
      chek(yechilganSumma);
      break;
    case 2:
      yechilganSumma = 100000;
      chek(yechilganSumma);
      break;
    case 3:
      yechilganSumma = 150000;
      chek(yechilganSumma);
      break;
    case 4:
      yechilganSumma = 200000;
      chek(yechilganSumma);
      break;
    case 5:
      yechilganSumma = 250000;
      chek(yechilganSumma);
      break;
    case 6:
      yechilganSumma = 300000;
      chek(yechilganSumma);
      break;
    case 7:
      int boshqaSumma = int.tryParse("${stdin.readLineSync()}") ?? 0;
      yechilganSumma = boshqaSumma;
      chek(yechilganSumma);
      break;
    default:
  }
}
