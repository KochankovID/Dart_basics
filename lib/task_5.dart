class NumberTranslator {
  static const _dictionary = <String, int>{
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9,
  };

  static List<int> translate(String str) {
    return str.split(', ').map((element) {
      return _dictionary[element];
    })
        .whereType<int>()
        .toSet()
        .toList();
  }
}
