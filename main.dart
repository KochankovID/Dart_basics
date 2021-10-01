import 'package:dart_basics/task_1.dart';
import 'package:dart_basics/task_2.dart';
import 'package:dart_basics/task_3.dart';
import 'package:dart_basics/task_4.dart';
import 'package:dart_basics/task_5.dart';
import 'package:dart_basics/task_6.dart';
import 'package:dart_basics/task_7.dart';
import 'package:dart_basics/task_8.dart';

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

  int numberToBinary = 15;
  List<int> binaryVersion = BinaryTranslation.intToBinary(numberToBinary);
  print('Binary version of $numberToBinary: $binaryVersion');

  int decimalVersion = BinaryTranslation.binaryToInt(binaryVersion);
  print('Decimal version of $binaryVersion: $decimalVersion');

  print('\n');
  print('-----------------[task_3]-----------------');

  String strToNumbers = 'adsf 10 0.3';
  List<num> numbersFromString = numSplitter(strToNumbers);
  print('From string "$strToNumbers" we get numbers: $numbersFromString');

  print('\n');
  print('-----------------[task_4]-----------------');

  List<String> collection = ['a', 'b', 'c', 'a', 'b'];
  Map<String, int> wordsCounted = wordCount(collection);
  print('In the collection "$collection" we count words: $wordsCounted');

  print('\n');
  print('-----------------[task_5]-----------------');

  String strNumbers = 'one, one, two, two, three, four, walking, six';
  numbersFromString = NumberTranslator.translate(strNumbers);
  print('In the string "$strNumbers" we found numbers: $numbersFromString');

  print('\n');
  print('-----------------[task_6]-----------------');

  Point A = Point(1, 2, 3);
  Point B = Point(-1, 0, 7);

  double distance = A.distanceTo(B);
  print('Distance between $A and $B is $distance');

  Point center = Point.center();
  print('The point $center is the center');

  print('\n');
  print('-----------------[task_7]-----------------');

  num number = 7;
  num root = 3;
  print('The root $root of the number $number is ${number.root(root)}');

  print('\n');
  print('-----------------[task_8]-----------------');

  AdminUser admin = AdminUser('fakafafakafa@mail.ru');
  String mailSystem = admin.getMailSystem();
  print('The user $admin has email system $mailSystem');

  UserManager<User> userManager = UserManager([
    User('fakafafakafa@mail.ru'),
    User('ilya@yandex.ru'),
    AdminUser('admin@gmail.ru')
  ]);
  print('All user emails: ${userManager.getEmails()}');
}
