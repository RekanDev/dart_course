import 'dart:io';
import 'dart:math';

void main() {
  // ---- Standard I/O Example 1 ----
  var input = '';

  while (input.trim().isEmpty) {
    stdout.write('Enter your name: ');
    input = stdin.readLineSync() ?? '';
  }

  print('Hello, $input');

  // ---- Standard I/O Example 2 ----
  final randomNumber = Random().nextInt(10) + 1;

  stdout.writeln('Guess a number between 1 and 10: ');
  final inputNumber = int.parse(stdin.readLineSync()!);

  if (inputNumber == randomNumber) {
    print('Correct');
  } else {
    print('Not Correct, The number was $randomNumber');
  }
}
