import 'dart:io';

void main() {
  int i, j, k, n;

  print('Enter the number');
  n = int.parse(stdin.readLineSync()!);

  for (i = 1; i <= n; i++) {
    for (j = 0; j < i; j++) {
      stdout.write(' ');
    }
    for (k = n - i; k >= 0; k--) {
      stdout.write('* ');
    }

    print('');
  }
}
