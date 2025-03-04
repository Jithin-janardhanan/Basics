import 'dart:io';

void main() {
  List A = [];
  int lim, num, i, j, temp;

  print('Enter the Limit');
  lim = int.parse(stdin.readLineSync()!);

  print('Enter numbers');
  for (i = 0; i < lim; i++) {
    num = int.parse(stdin.readLineSync()!);
    A.add(num);
  }

  for (i = 0; i < lim - 1; i++) {
    for (j = i + 1; j < lim; j++) {
      if (A[i] > A[j]) {
        temp = A[i];
        A[i] = A[j];
        A[j] = temp;
      }
    }
  }
  print(A);

  for (i = 0; i < lim; i++) {
    stdout.write('${A[i]},');
  }
}
