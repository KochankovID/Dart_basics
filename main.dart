import 'package:dart_basics/task_1.dart';

void main (){
  // task 1 ----------------------------------------------------
  const a = 2;
  const b = 11;
  const primeNumber = 6;
  const splitNumber = 100;

  print('-----------------[task_1]-----------------');
  int divisor = DelimetersCalculator.greatestCommonDivisor(a, b);
  print('Greatest common divisor of $a and $b: $divisor \n');

  int multiple = DelimetersCalculator.lowestCommonMultiple(a, b);
  print('Lowest common multilier of $a and $b: $multiple \n');

  bool isPrime = DelimetersCalculator.isPrimeNumber(primeNumber);
  print('Number $primeNumber is prime: $isPrime \n');

  List<int> primeFactors = DelimetersCalculator.splitPrimeFactors(splitNumber);
  print('Prime factors of $splitNumber: $primeFactors \n');
}