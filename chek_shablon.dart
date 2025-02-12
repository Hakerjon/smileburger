String chekError({required String chekMatnError}) {
  if (chekMatnError.isNotEmpty) {
    final now = DateTime.now();
    String chekVaqti =
        "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";
    String chekMatni = '''
 _________________________
|    ${chekVaqti}     |
|                         |
| ${chekMatnError}
|                         |
|                         |
 _________________________
''';
    return chekMatni;
  } else {
    return "";
  }
}

String chekSuccess({required String chekMatn1, required String chekMatn2}) {
  if (chekMatn1.isNotEmpty) {
    final now = DateTime.now();
    String chekVaqti =
        "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";
    String chekMatni = '''
 _________________________
|${chekVaqti}         |
|                         |
|${chekMatn1}
|${chekMatn2}
|                         |
 _________________________
''';
    return chekMatni;
  } else if (chekMatn2.isEmpty) {
    return "";
  } else {
    return "";
  }
}

String MenuXoshiyali({required matn1, matn2, matn3, matn4, matn5, matn6}) {
  if (matn1.isNotEmpty) {
    String stars = "*";
    String chekMatni = '''
${stars * 30}
||    
||                       
||=>${matn1}     ${matn2 ?? ""}
|| ${matn3 ?? ""}   ${matn4 ?? ""}
|| ${matn5 ?? ""}   ${matn6 ?? ""}
||
||                       
||             
${stars * 30}
''';
    return chekMatni;
  } else {
    return "";
  }
}

// void main(List<String> args) {
//   // print(chekError(chekMatnError: "Nimadir xato ketdimi"));
//   // print(chekSuccess(
//   //     chekMatn1: "Amaliyot muvaffaqiyatli", chekMatn2: "amalga oshirildi!"));
//   // print(MenuXoshiyali(matn1: "Pul yechish", matn6: "Chiqish"));
//   print(chekSuccess(
//       chekMatn1: "to'lov muvaffaqiyatli", chekMatn2: "amalga oshiriladi"));
//   print(MenuXoshiyali(matn1: "Balansni ko'rish", matn2: "Pinni almashtirish"));
// }
