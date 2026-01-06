void main() {
  final numbers = ['2', '5'];

  // Using the extension getter
  print('Double length: ${numbers.doubleLength}');
}

// Extension on List<T>
extension MyExt<T> on List<T> {
  int get doubleLength => length * 2;
}
