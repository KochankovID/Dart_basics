import 'package:dart_basics/task_1.dart';
import 'package:dart_basics/task_2.dart';
import 'package:dart_basics/task_3.dart';
import 'package:dart_basics/task_4.dart';
import 'package:dart_basics/task_5.dart';
import 'package:dart_basics/task_6.dart';

void main() {
  print('-----------------[task_1]-----------------');

  const a = 2;
  const b = 11;
  const primeNumber = 6;
  const splitNumber = 100;

  int divisor = DelimetersCalculator.greatestCommonDivisor(a, b);
  print('Greatest common divisor of $a and $b: $divisor');

  int multiple = DelimetersCalculator.lowestCommonMultiple(a, b);
  print('Lowest common multiplier of $a and $b: $multiple');

  bool isPrime = DelimetersCalculator.isPrimeNumber(primeNumber);
  print('Number $primeNumber is prime: $isPrime');

  List<int> primeFactors = DelimetersCalculator.splitPrimeFactors(splitNumber);
  print('Prime factors of $splitNumber: $primeFactors');

  print('\n');
  print('-----------------[task_2]-----------------');

  int number_to_binary = 15;
  List<int> binary_version = BinaryTranslation.intToBinary(number_to_binary);
  print('Binary version of $number_to_binary: $binary_version');

  int decimal_version = BinaryTranslation.binaryToInt(binary_version);
  print('Decimal version of $binary_version: $decimal_version');

  print('\n');
  print('-----------------[task_3]-----------------');

  String str_to_numbers = 'adsf 10 0.3';
  List<num> numbers_from_string = numSplitter(str_to_numbers);
  print('From string "$str_to_numbers" we get numbers: $numbers_from_string');

  print('\n');
  print('-----------------[task_4]-----------------');

  List<String> collection = ['a', 'b', 'c', 'a', 'b'];
  Map<String, int> words_counted = wordCount(collection);
  print('In the collection "$collection" we count words: $words_counted');

  print('\n');
  print('-----------------[task_5]-----------------');

  String str_numbers = 'one, one, two, two, three, four, walking, six';
  numbers_from_string = NumberTranslator.translate(str_numbers);
  print('In the string "$str_numbers" we found numbers: $numbers_from_string');

  print('\n');
  print('-----------------[task_6]-----------------');

  Point A = Point(1, 2, 3);
  Point B = Point(-1, 0, 7);

  double distance = A.distanceTo(B);
  print('Distance between $A and $B is $distance');

  Point center = Point.center();
  print('The point $center is the center');
}
