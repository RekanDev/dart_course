// Library-level variable (accessible anywhere in this file)
int _z = 5;

void main() {
  // Block-level variable (only accessible inside this `if` block)
  if (true) {
    final x = 5;

    if (x == 5) {
      // x is accessible here
      print('x = $x');
    }

    // x is still accessible here
    print('x inside outer if = $x');
  }

  // x is NOT accessible here → uncommenting below would cause error
  // print(x);

  // _z is accessible anywhere in this file
  print('_z = $_z');
}

class A {
  A() {
    // Can access _z because it's library-private
    print('Accessing _z from class A = $_z');

    // Cannot access x because it's block-scoped in main
    // print(x); // Error
  }
}
