void main() {
  // --- String Example ---
  String name = 'Ahmad';
  print(name);

  // --- Integer Example ---
  int age = 45;
  print(age);

  // --- Double Example ---
  double score = 3;
  print(score);

  // --- Boolean Example ---
  bool isOpen = true;
  print(isOpen);

  // --- Num Example (int) ---
  num number1 = 60;
  print(number1);

  // --- Num Example (double) ---
  num number2 = 60.5;
  print(number2);

  // --- List Example ---
  List<int> ages = [50, 69, 39];
  //                0   1   2
  print(ages);
  print(ages[0]);
  print(ages[1]);

  var age3 = ages[2];
  print(age3);

  // --- List of Strings ---
  List<String> names = ['Ahmad', 'Azad'];
  print(names[0]);

  names[0] = 'Omar';
  print(names[0]);

  // --- Set Example ---
  Set<int> days = {5, 3, 7};
  print(days);
  print(days.elementAt(0));

  // --- Map Example ---
  Map<String, int> persons = {
    // Key : Value
    'Ahmad': 36,
    'Azad': 23,
  };
  print(persons);
  print(persons['Ahmad']);

  persons['Ahmad'] = 45;
  print(persons);

  // --- Object vs Dynamic ---
  Object nameObject = 'String';
  dynamic nameDynamic = 'String';

  print(nameObject);
  print(nameDynamic);

  // print(nameObject.length); // Not allowed (compile-time error)
  // print(nameDynamic.length); // Works at runtime
}
