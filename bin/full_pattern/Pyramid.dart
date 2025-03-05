import 'dart:io';

void main() {
  int? n;

  print('Enter the number:');
  String? input = stdin.readLineSync(); // Read input

  // Check if input is null or empty, if so, provide a default or retry
  if (input == null || input.trim().isEmpty) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  // Try parsing input to an integer, handle potential errors
  try {
    n = int.parse(input);
  } catch (e) {
    print(e);
    return;
  }

  for (int i = 1; i <= n; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write(' ');
    }
    for (int k = n - i; k >= 0; k--) {
      stdout.write('* ');
    }
    print('');
  }
}

