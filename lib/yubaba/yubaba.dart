import 'dart:math';

class Yubaba {
  String rename(String rawName) {
    final int newNameIndex = Random().nextInt(rawName.length);
    return rawName.substring(newNameIndex);
  }
}
