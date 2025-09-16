void main() {
  print("--- Debugging Demo ---");

  // Example 1: Normal Breakpoint
  print("Step 1: Normal Breakpoint");
  int a = 5; // Set a normal breakpoint here
  int b = 10;
  int sum = a + b;
  print("Sum: $sum");

  // Example 2: Conditional Breakpoint
  print("\nStep 2: Conditional Breakpoint");
  for (int i = 0; i < 10; i++) {
    print("Iteration: $i"); // Set a breakpoint here with condition: i == 7
  }

  // Example 3: Debug Expressions
  print("\nStep 4: Debug Expressions");
  int x = 3;
  int y = 4;
  int result = multiply(
    x,
    y,
  ); // Pause here and evaluate expressions in Debug Console: x+y, result*2, multiply(5,6)

  print("Result of multiply: $result");

  // Example 4: Watch Variables
  List<int> numbers = [1, 2, 3, 4];
  for (var n in numbers) {
    print(
      "Number: $n",
    ); // Add 'n' to Watch to see values while stepping through
  }
}

// Simple function for debug expressions
int multiply(int a, int b) => a * b;
