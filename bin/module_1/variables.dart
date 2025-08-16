// ignore_for_file: prefer_typing_uninitialized_variables

void main() {
  var name = 'Ahmad';
  print(name);

  name = 'Azad';
  print(name);

  final age;
  age = 35;
  print(age);

  // The final variable 'age' can only be set once.
  // age = 30;

  const isOpen = true;
  print(isOpen);

  // Constant variables can't be assigned a value after initialization.
  // isOpen = false;

  const pi = 3.1415926535897932;
  print(pi);
}
