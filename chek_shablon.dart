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

String chekSuccess({required String chekMatn1, required chekMatn2}) {
  if (chekMatn1.isNotEmpty) {
    final now = DateTime.now();
    String chekVaqti =
        "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";
    String chekMatni = '''
 _________________________
|${chekVaqti}         |
|-----------CHEK----------|
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

String MenuXoshiyali(
    {required matn1, matn2, matn3, matn4, matn5, matn6, matn7}) {
  if (matn1.isNotEmpty) {
    String stars = "*";
    String chekMatni = '''
${stars * 30}
||    
||                       
|| ${matn1}         ${matn2 ?? ""}
|| ${matn3 ?? ""}   ${matn4 ?? ""}
|| ${matn5 ?? ""}   ${matn6 ?? ""}
|| ${matn7 ?? ""}
||                       
||            
${stars * 30}
''';
    return chekMatni;
  } else {
    return "";
  }
}
