import 'dart:math';

class BinaryTranslation {
  static List<int> intToBinary(int num) {
    _negativeCheck(num);
    return _transitionTo(num, 2);
  }

  static int binaryToInt(List<int> num) {
    return _transitionFrom(num, 2);
  }

  static _negativeCheck(int num) {
    if (num < 0) {
      throw ArgumentError('Num can\'t be negative');
    }
  }
}

List<int> _transitionTo(int num, int notation) {
  var result = <int>[];

  result.add(num % notation);
  num ~/= notation;

  while (num > 0) {
    result.insert(0, num % notation);
    num ~/= notation;
  }
  return result;
}

int _transitionFrom(List<int> num, int notation) {
  int result = 0;
  for (int i = 0; i < num.length; i++) {
    result += (pow(notation, i) * num[i]).toInt();
  }
  return result;
}
