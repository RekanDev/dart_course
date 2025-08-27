void main() {
  var x = 5;
  print('x = $x');
  print('y = ${x + 10}');

  String name = 'Dara Ahmad';
  print('name is Empty: ${name.isEmpty}');
  print('name length: ${name.length}');
  print('name contains "Da": ${name.contains('Da')}');
  print('name uppercase: ${name.toUpperCase()}');

  print('---------------------------------------------');

  int numberInt = -5;
  print('number is Even: ${numberInt.isEven}');
  print('number is Odd: ${numberInt.isOdd}');
  print('absolute value: ${numberInt.abs()}');
  print('convert to double: ${numberInt.toDouble()}');

  print('---------------------------------------------');

  double numberDouble = 5.75;
  print('rounded value: ${numberDouble.round()}');
  print('truncated value: ${numberDouble.truncate()}');
  print('convert to int: ${numberDouble.toInt()}');

  print('---------------------------------------------');

  List<String> fruits = ['apple', 'banana', 'cherry'];
  print('list length: ${fruits.length}');
  print('list contains "banana": ${fruits.contains('banana')}');
  fruits.add('date');
  print('after add "date": $fruits');
  fruits.remove('apple');
  print('after remove "apple": $fruits');

  print('---------------------------------------------');

  Map<String, int> scores = {'Ali': 90, 'Sara': 85, 'Omar': 88};
  print('map keys: ${scores.keys}');
  print('map values: ${scores.values}');
  print('map contains key "Ali": ${scores.containsKey('Ali')}');
  print('value for "Sara": ${scores['Sara']}');

  print('---------------------------------------------');

  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(5);
  print('after add 5: $numbers');
  numbers.remove(2);
  print('after remove 2: $numbers');
  print('set contains 3: ${numbers.contains(3)}');

  print('---------------------------------------------');

  bool isActive = true;
  print('bool to string: ${isActive.toString()}');

  final listFinal = [1, 2, 3];
  const listConst = [4, 5, 6];

  print('final list = $listFinal');
  print('const list = $listConst');

  listFinal.add(10);
  print('final list = $listFinal');

  listConst.add(10);
  print('const list = $listConst');
}
