// ignore_for_file: unnecessary_null_comparison, dead_code
// ignore_for_file: invalid_null_aware_operator
// ignore_for_file: unnecessary_non_null_assertion

void main() {
  // ---- nullable vs non-nullable ----
  int nonNullable = 10;
  int? nullableInt;
  print("Non-nullable: $nonNullable");
  print("Nullable before assignment: $nullableInt");

  // ---- null-aware access (?.) ----
  String? nullableString;
  print(
    "Length of nullableString: ${nullableString?.length}",
  ); // safe, prints null
  nullableString = "Hello";
  print("Length after assigning: ${nullableString?.length}");

  // ---- default value (??) ----
  int value = nullableInt ?? 100;
  print("Value with default: $value");

  // ---- assign if null (??=) ----
  nullableInt ??= 50;
  print("NullableInt after ??=: $nullableInt");

  // ---- null assertion (!) ----
  int forcedNonNull = nullableInt!;
  print("Forced non-null: $forcedNonNull");

  // ---- null-aware spread (...?) ----
  List<int>? numbers;
  var list = [0, ...?numbers];
  print("List with null-aware spread: $list");
  numbers = [1, 2, 3];
  var list2 = [0, ...?numbers];
  print("List after assigning numbers: $list2");

  // ---- null checks & type promotion ----
  int? maybeNumber = 42;
  if (maybeNumber != null) {
    int result = maybeNumber + 8;
    print("Result after null check: $result");
  }
}
