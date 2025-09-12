void main() {
  // ---- try-catch ----
  try {
    var result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print("Caught exception: $e");
  }

  // ---- try-catch-on ----
  try {
    var result = 10 ~/ 0;
    print(result);
  } on UnsupportedError {
    print("Caught division by zero (using 'on').");
  } catch (e) {
    print("Caught general exception: $e");
  }

  // ---- try-catch-finally ----
  try {
    var result = 10 ~/ 2;
    print("Result: $result");
  } catch (e) {
    print("Caught exception: $e");
  } finally {
    print("Finally block always runs.");
  }

  // ---- rethrow ----
  try {
    try {
      throw FormatException("Bad format!");
    } catch (e) {
      print("Inner catch: $e");
      rethrow;
    }
  } catch (e) {
    print("Outer catch handled rethrown exception: $e");
  }

  // ---- assert ----
  var age = 18;
  assert(age >= 18, "Age must be at least 18!");
  print("Program finished successfully.");
}
