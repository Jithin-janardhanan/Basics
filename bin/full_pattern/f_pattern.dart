import 'dart:io';

void main() {
  int n = 6; // Size of the pattern

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (i == 0 || i == n ~/ 2 || j == 0) {
        stdout.write("*");
      } else {
        stdout.write(" ");
      }
    }
    print(""); // Move to the next line
  }
}