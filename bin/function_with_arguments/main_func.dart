//function with argument nd without retun value

import 'dart:io';
import 'sum_func.dart';

void main() {
  int a, b;
  print('enter 2 number');
  a = int.parse(stdin.readLineSync()!);
  b = int.parse(stdin.readLineSync()!);
  sum(a, b);
}



