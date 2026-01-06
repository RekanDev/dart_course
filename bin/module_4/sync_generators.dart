void main() {
  // ---- Normal function ----
  final listNormal = normalFn(10);
  print('index 5 Normal = ${listNormal[5]}');

  // ---- Generator function ----
  final listGenerator = generatorFn(10);
  print('listGenerator = $listGenerator');
}

// Normal function: builds entire list in memory
List<int> normalFn(int count) {
  print('--- Start Normal Fn ---');

  List<int> numbers = [];
  for (var i = 0; i < count; i++) {
    print('normal index -> $i');
    numbers.add(i);
  }

  print('--- End Normal Fn ---');
  return numbers;
}

// Generator function: yields values one by one, lazily
Iterable<int> generatorFn(int count) sync* {
  print('--- Start Generator Fn ---');

  for (var i = 0; i < count; i++) {
    print('generator index -> $i');
    yield i; // yields each value one at a time
  }

  print('--- End Generator Fn ---');
}

/* Optional: chaining generators with yield*
Iterable<int> generatorFn2(int count) sync* {
  print('--- Start Generator Fn 2 ---');

  for (var i = 0; i < count; i++) {
    print('generator 2 index -> $i');
    yield i;
  }

  print('--- End Generator Fn 2 ---');
}
*/
