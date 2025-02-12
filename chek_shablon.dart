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

void main(List<String> args) {
  print(chekError(chekMatnError: "Nimadir xato ketdimi"));
  print(chekSuccess(
      chekMatn1: "Amaliyot muvaffaqiyatli", chekMatn2: "amalga oshirildi!"));
}
