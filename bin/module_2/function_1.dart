void main() {
  // ---- Basic Function ----
  slaw();

  // ---- Function with Parameters ----
  slawParameters('Ahamd', 30);
  slawParameters('Azad', 20);
  slawParameters('Kamaran', 35);

  // ---- Optional Positional Parameters ----
  slawOptionalPositionalParameters('Ahamd', 30);
  slawOptionalPositionalParameters('Azad', 20, 'azad@email.com');

  // ---- Optional Named Parameters ----
  slawOptionalNamedParameters(name: 'Azad', age: 20, email: 'azad@email.com');

  // ---- Required Named Parameters + Defaults ----
  slawRequiredNamedParametersDefaults('', age: 20);

  // ---- Function with Return Value ----
  final sumFn = sum(1, 2);
  print('sumFn = $sumFn');

  // ---- Arrow Function ----
  slawArrow();

  // ---- Anonymous Function ----
  final numbers = [1, 2, 3];
  for (var element in numbers) {
    print(element);
  }
}

// ---- Basic Function ----
void slaw() {
  print('Slaw Ahmad');
}

// ---- Function with Parameters ----
void slawParameters(String name1, int age) {
  print('Slaw $name1, taman = $age');
}

// ---- Optional Positional Parameters ----
void slawOptionalPositionalParameters(
  String name1,
  int age, [
  String? email,
  String? email2,
]) {
  print('Slaw $name1, taman = $age, email = $email');
}

// ---- Optional Named Parameters ----
void slawOptionalNamedParameters({
  String? name,
  int? age,
  String? email,
  String? email2,
}) {
  print('Slaw $name, taman = $age, email = $email');
}

// ---- Required Named Parameters + Defaults ----
void slawRequiredNamedParametersDefaults(
  String address, {
  String name = 'no name',
  required int age,
  String? email,
}) {
  print('Slaw $name, taman = $age, email = $email');
}

// ---- Function with Return Value ----
int sum(int a, int b) {
  final c = a + b;
  return c;
}

// ---- Arrow Function ----
void slawArrow() => print('Slaw (arrow)');
