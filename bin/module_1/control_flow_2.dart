void main() {
  int day = 3;
  int score = 85;
  Object value = "Hello";

  // ---------------- Basic switch ----------------
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
    case 7: // multiple cases
      print("Weekend");
      break;
    default:
      print("Invalid day");
  }

  // ---------------- Switch with continue ----------------
  switch (score ~/ 10) {
    case 10:
    case 9:
      print("Grade: A");
      break;
    case 8:
      print("Grade: B");
      break;
    case 7:
      print("Grade: C");
      break;
    case 6:
      continue lower; // jump to another case
    lower:
    case 5:
      print("Grade: D");
      break;
    default:
      print("Grade: F");
  }

  // ---------------- Switch with pattern matching (Dart 3+) ----------------
  switch (value) {
    case int n when n > 0:
      print("Positive number: $n");
    case int n:
      print("Number: $n");
    case String text:
      print("It’s a string: $text");
    case bool flag:
      print("It’s a boolean: $flag");
    default:
      print("Unknown type");
  }
}
