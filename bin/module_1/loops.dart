// ignore_for_file: unused_label

void main() {
  // ---- For loop ----
  var numbers = [1, 2, 3, 4, 5, 6];
  print("For loop:");
  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  // ---- For-in loop ----
  print("\nFor-in loop:");
  for (var element in numbers) {
    print(element);
  }

  // ---- forEach ----
  print("\nforEach loop:");
  for (var element in numbers) {
    print(element);
  }

  // ---- While loop ----
  print("\nWhile loop:");
  var i = 0;
  while (i < 5) {
    print(i);
    i++;
  }

  // ---- Do-while loop ----
  print("\nDo-while loop:");
  var j = 0;
  do {
    print(j);
    j++;
  } while (j < 5);

  // ---- Break ----
  print("\nBreak example:");
  for (var x = 0; x < 3; x++) {
    for (var y = 0; y < 5; y++) {
      print('x = $x, y = $y');
      if (y == 2) {
        break; // exits the inner loop
      }
    }
  }

  // ---- Continue ----
  print("\nContinue example:");
  for (var x = 0; x < 5; x++) {
    if (x == 3) {
      continue; // skips this iteration
    }
    print(x);
  }

  // ---- Label Break ----
  print("\nLabel Break example:");
  loop1:
  for (var a = 0; a < 3; a++) {
    loop2:
    for (var b = 0; b < 5; b++) {
      loop3:
      for (var c = 0; c < 7; c++) {
        print('a = $a, b = $b, c = $c');
        if (c == 3) {
          break loop2; // breaks out of loop2 directly
        }
      }
    }
  }

  // ---- Label Continue ----
  print("\nLabel Continue example:");
  loop1:
  for (var a = 0; a < 3; a++) {
    loop2:
    for (var b = 0; b < 5; b++) {
      if (b == 3) {
        continue loop1; // jumps to next iteration of loop1
      }
      print('a = $a, b = $b');
    }
  }
}
