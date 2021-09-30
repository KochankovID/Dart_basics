class DelimetersCalculator {
  static int greatestCommonDivisor(int a, int b) {
    // set max number to a
    if (a < b) {
      int tmp = a;
      a = b;
      b = tmp;
    }

    while (b != 0) {
      a %= b;

      int tmp = a;
      a = b;
      b = tmp;
    }
    return a;
  }

  static int lowestCommonMultiple(int a, int b) {
    return a * b ~/ DelimetersCalculator.greatestCommonDivisor(a, b);
  }

  static List<int> splitPrimeFactors(int number) {
    if (isPrimeNumber(number)) {
      return [number];
    }

    int div = 2;
    var result = <int>[];

    while (number > 1) {
      while ((number % div) == 0) {
        result.add(div);
        number = number ~/ div;
      }
      div++;
    }
    return result;
  }

  static bool isPrimeNumber(int a) {
    return DelimetersCalculator._sieveOfEratosthenes(a).contains(a);
  }

  static List<int> _sieveOfEratosthenes(int max_number) {
    var numbers = [for (var i = 0; i <= max_number; i++) i];
    var result = <int>[];

    for (int p = 2; p <= max_number; p++) {
      if (numbers[p] != 0) {
        result.add(p);
        for (int j = p * p; j <= max_number; j += p) {
          numbers[j] = 0;
        }
      }
    }
    return result;
  }
}
