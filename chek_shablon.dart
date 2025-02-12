String chekError({required String chekMean}) {
  if (chekMean.isNotEmpty) {
    final now = DateTime.now();
    String chekVaqti = "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";
    String chekMatni = '''
 _________________________
|${chekVaqti}         |
|                         |
|     ${chekMean.padLeft((20 + chekMean.length) ~/ 2).padRight(20)}
|                         |
|                         |
 _________________________
''';
    return chekMatni;
  } else {
    return "";
  }
}

void main(List<String> args) {
  print(chekError(chekMean: "Nimadir xato ketdimi"));
}
