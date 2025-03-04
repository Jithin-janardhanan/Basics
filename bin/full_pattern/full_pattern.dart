
//     * 
//    * *
//   * * *
//  * * * *
// * * * * *

import 'dart:io';

void main() {
  int i, j, k, n;

  print('Enter thenumber');
  n = int.parse(stdin.readLineSync()!);

  for (i = 1; i <= n; i++) {
    for (k = n - i; k > 0; k--) {
      stdout.write(' ');}
        for (j = 1; j <= i; j++) {
          stdout.write('* ');
        
      }
      print('');
    }

    
  }

