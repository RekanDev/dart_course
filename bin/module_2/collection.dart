// ignore_for_file: unused_local_variable, unnecessary_null_comparison, dead_code

import 'dart:collection';

void main() {
  // ---- Collection if / for / switch ----
  List<int> collectionNumbers = [
    1,
    2,
    3,
    if (true) 4,
    for (int n in [5, 6, 7]) n,
    switch ('1') {
      '1' => 1,
      String() => 0,
    },
  ];

  Set<String> foods = {if (false) 'apple'};

  print(collectionNumbers);
  print(foods);

  // ---- Common Collection Methods (map) ----
  List<int> mapNumbers = [1, 2, 3];
  final doubledNumbers = mapNumbers.map((e) => e * 2).toList();

  print(mapNumbers);
  print(doubledNumbers);

  // ---- Common Collection Methods (where) ----
  List<int> whereNumbers = [1, 2, 3];
  final evenNumbers = whereNumbers.where((e) => e.isEven).toList();

  print(whereNumbers);
  print(evenNumbers);

  // ---- Common Collection Methods (fold) ----
  List<int> foldNumbers = [1, 2, 3];
  final sumResult = foldNumbers.fold(
    10,
    (previousValue, element) {
      final result = previousValue + element;
      return result;
    },
  );

  print(foldNumbers);
  print(sumResult);

  // ---- Unmodifiable List ----
  final unmodifiableNumbers = UnmodifiableListView([1, 2, 3]);
  // unmodifiableNumbers.add(2); // runtime error
  print(unmodifiableNumbers);

  // ---- Null-Aware element ----
  int? nullableValue = 5;

  List<int> nullAwareNumbers = [
    1,
    2,
    3,
    if (nullableValue != null) nullableValue,
    if (nullableValue != null) nullableValue,
  ];

  print(nullAwareNumbers);
}
