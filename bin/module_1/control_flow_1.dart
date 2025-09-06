void main() {
  int age = 18;
  int score = 75;
  bool hasID = true;
  String role = "admin";

  // ---------------- if / else if / else ----------------
  if (score >= 90) {
    print("Grade: A");
  } else if (score >= 75) {
    print("Grade: B");
  } else if (score >= 50) {
    print("Grade: C");
  } else {
    print("Grade: F");
  }

  // ---------------- logical operators ----------------
  if (age >= 18 && hasID) {
    print("You are allowed to enter");
  }

  if (age < 18 || !hasID) {
    print("You cannot enter");
  }

  // ---------------- ternary operator ----------------
  String result = (score >= 50) ? "You passed" : "You failed";
  print(result);

  // ---------------- nested if ----------------
  if (age >= 18) {
    if (role == "admin") {
      print("Welcome, Admin");
    } else {
      print("Welcome, User");
    }
  } else {
    print("You must be 18 or older to log in");
  }

  // ---------------- if-case pattern matching (Dart 3+) ----------------
  if (age case int a) {
    print("Age is an int with value $a");
  }

  if (age case int a when a == 18) {
    print("Age is an int with value $a and equal to 18");
  }

  // ---------------- comparison operators ----------------
  if (score != 100) {
    print("Score is not perfect");
  } else if (score == 75) {
    print("Score is exactly 75");
  } else if (score > 50 && score < 100) {
    print("Score is between 50 and 100");
  }
}
