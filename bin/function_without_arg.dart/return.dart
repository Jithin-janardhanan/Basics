import 'dart:io';

int sum() {
  int a, b, result;

  print("enterr 2 nummber");

  a = int.parse(stdin.readLineSync()!);
  b = int.parse(stdin.readLineSync()!);

  result = a + b;
  return result;
}
