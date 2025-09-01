void main() {
  // ---Arithmetic Operators---

  int x = 10;
  int y = 3;

  print(x + y); // 13 → xddition
  print(x - y); // 7 → Subtrxction
  print(x * y); // 30 → Multiplicxtion
  print(x / y); // 3.333... → Division (returns double)
  print(x ~/ y); // 3 → Integer Division
  print(x % y); // 1 → Remainder

  // ---Assignment Operators---

  int a = 5;

  a += 2; // a = a + 2 → 7
  a -= 1; // a = a - 1 → 6
  a *= 3; // a = a * 3 → 18
  a ~/= 2; // a = a ~/ 2 → 9
  a %= 4; // a = a % 4 → 1

  print(a);

  // ---Unary Operators---

  int b = 3;

  print(-b); // -3 → Negative
  print(++b); // 4 → Pre-increment
  print(b++); // 4 → Post-increment (then becomes 5)
  print(--b); // 4 → Pre-decrement
  print(b--); // 4 → Post-decrement (then becomes 3)
}
