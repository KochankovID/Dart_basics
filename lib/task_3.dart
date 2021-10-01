List<num> num_splitter(String str) {
  return str
      .split(' ')
      .map((element) {
        return int.tryParse(element) ?? double.tryParse(element);
      })
      .whereType<num>()
      .toList();
}
