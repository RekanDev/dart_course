// ignore_for_file: prefer_function_declarations_over_variables

void main() {
  // ---- Higher-Order Functions ----
  final fn = (String name) {
    print(name);

    return '444';
  };
  myFn(fn);

  // ---- Lexical Scope ----
  void slaw() {
    print('slaw');

    void slaw2() {
      print('slaw 2');
    }

    slaw2();
  }

  slaw();

  // ---- Lexical Closures ----
  final name = 'Azad';
  void slawAzad() {
    print('slaw $name');
  }

  slawAzad();
  print('name = $name');

  // ---- Recursive Function ----
  countDown(5);

  // ---- Top-Level vs Local Function ----
  topLevelFn();
  void localSlaw() {
    print('slaw (local)');
  }

  localSlaw();
  topLevelFn();

  // ---- Typedef ----
  SlawFn slawFn = (name, email, age) =>
      print('name = $name, email = $email, age = $age');
  slawFn('Azad', 'azad@email.com', 20);

  // ---- Returning Multiple Values ----
  final (sum, person, sum2) = sumFn(1, 2);
  print(sum);
  print(sum2);
  print(person);
}

// ---- Higher-Order Functions ----
void myFn(String Function(String name) fn) {
  var number = fn('name');
  print(number);
}

// ---- Recursive Function ----
void countDown(int n) {
  if (n == 0) {
    print('End!');
  } else {
    print(n);
    countDown(n - 1);
  }
}

// ---- Top-Level Function ----
void topLevelFn() {
  print('I am top-level');
}

// ---- Typedef ----
typedef SlawFn = void Function(String name, String email, int age);

// ---- Returning Multiple Values ----
(int, String, int) sumFn(int a, int b) {
  final c = a + b;
  return (c, 'Azad', c + 1);
}
