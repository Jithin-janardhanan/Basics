// *****
//  ****
//   ***
//    **
//     *
import 'dart:io';

void main() {
  int i,j, k;
  int limit;

  print('Enter a number');
  limit = int.parse(stdin.readLineSync()!);

  for (i = 1; i <= limit; i++) {

    for (k = 1; k < i; k++) {
      stdout.write(' ');}
      for(j=limit;j>=i;j--){
        stdout.write('*O');

      }
      print('');
    }
    
  }

