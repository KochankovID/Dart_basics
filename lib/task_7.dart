extension PowerExtention on num {
  num root(num power) {
    if (this < 0) {
      throw ArgumentError('Can\'t get root of the negative number');
    }

    if (this == 1) {
      return 1;
    }

    num root = this;
    while ((this - root.pow(power)).abs() > 0.001) {
      root = 1 / power * ((power - 1) * root + this / root.pow(power - 1));
    }
    return root;
  }

  num pow(num power) {
    num result = 1;
    for (var i = 0; i < power; i++) {
      result *= this;
    }
    return result;
  }
}
