import 'dart:math';

class BinaryTranslation {
  static List<int> int_to_binary(int num) {
    _negative_check(num);
    return _transition_to(num, 2);
  }

  static int binary_to_int(List<int> num) {
    return _transition_from(num, 2);
  }

  static _negative_check(int num) {
    if (num < 0) {
      throw ArgumentError('Num can\'t be negative');
    }
  }
}

List<int> _transition_to(int num, int notation) {
  var result = <int>[];

  result.add(num % notation);
  num ~/= notation;

  while (num > 0) {
    result.insert(0, num % notation);
    num ~/= notation;
  }
  return result;
}

int _transition_from(List<int> num, int notation) {
  int result = 0;
  for (int i = 0; i < num.length; i++) {
    result += (pow(notation, i) * num[i]).toInt();
  }
  return result;
}
