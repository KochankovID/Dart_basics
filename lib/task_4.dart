Map<String, int> word_count(List<String> words) {
  var result = <String, int>{};
  words.forEach((element) {
    result[element] = result.containsKey(element) ? result[element]! + 1 : 1;
  });
  return result;
}