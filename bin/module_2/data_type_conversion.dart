void main() {
  // String -> int
  String strToInt = '5';
  int parsedInt = int.parse(strToInt);

  print('strToInt = ${strToInt.runtimeType}');
  print('parsedInt = ${parsedInt.runtimeType}');

  // String -> double
  String strToDouble = '5';
  double parsedDouble = double.parse(strToDouble);

  print('strToDouble = ${strToDouble.runtimeType}');
  print('parsedDouble = ${parsedDouble.runtimeType}');

  // String -> int (tryParse)
  String tryIntStr = '4';
  int? tryParsedInt = int.tryParse(tryIntStr);

  print('tryIntStr = ${tryIntStr.runtimeType}');
  print('tryParsedInt = ${tryParsedInt.runtimeType}');

  // String -> double (tryParse)
  String tryDoubleStr = 'a';
  double? tryParsedDouble = double.tryParse(tryDoubleStr);

  print('tryDoubleStr = ${tryDoubleStr.runtimeType}');
  print('tryParsedDouble = ${tryParsedDouble.runtimeType}');

  // int -> String
  int intValue = 5;
  String intToString = intValue.toString();

  print('intValue = ${intValue.runtimeType}');
  print('intToString = ${intToString.runtimeType}');

  // double -> String
  double doubleValue = 5;
  String doubleToString = doubleValue.toString();

  print('doubleValue = ${doubleValue.runtimeType}');
  print('doubleToString = ${doubleToString.runtimeType}');

  // int -> double
  int intToConvert = 5;
  double intConvertedToDouble = intToConvert.toDouble();

  print('intToConvert = ${intToConvert.runtimeType}');
  print('intConvertedToDouble = ${intConvertedToDouble.runtimeType}');

  // double -> int
  double doubleToConvert = 5;
  int doubleConvertedToInt = doubleToConvert.toInt();

  print('doubleToConvert = ${doubleToConvert.runtimeType}');
  print('doubleConvertedToInt = ${doubleConvertedToInt.runtimeType}');

  // String -> bool
  String strBool = 'true';
  bool stringToBool = strBool == 'true';

  print('strBool = ${strBool.runtimeType}');
  print('stringToBool = ${stringToBool.runtimeType}');

  // bool -> String
  bool boolValue = true;
  String boolToString = boolValue.toString();

  print('boolValue = ${boolValue.runtimeType}');
  print('boolToString = ${boolToString.runtimeType}');

  // num conversions
  num numValue = 123;
  int numToInt = numValue.toInt();
  double numToDouble = numValue.toDouble();

  print('numToInt = ${numToInt.runtimeType}');
  print('numToDouble = ${numToDouble.runtimeType}');

  // dynamic/Object -> int (as) runtime error if uncommented
  Object objectValue = '5';
  // int objectToInt = objectValue as int;
  print(objectValue.runtimeType);

  // cast() for collections runtime error if uncommented
  List mixedList = [1, 2, '3'];
  // List<int> intList = mixedList.cast<int>();
  print(mixedList);

  // dynamic/Object -> specific type (is)
  Object unknownValue = 5;

  if (unknownValue is int) {
    print(unknownValue);
  }
}
