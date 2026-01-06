void main() {
  // Sealed class usage
  final B1 b1 = B1();
  final B2 b2 = B2();
  final B3 b3 = B3();

  print(b1.runtimeType);
  print(b2.runtimeType);
  print(b3.runtimeType);

  // Interface example
  final myCar = Car();
  myCar.drive();
}

// Sealed class: can only be extended in the same file
sealed class A {}

// Subclasses of sealed class
class B1 extends A {}

class B2 extends A {}

class B3 extends A {}

// Base class: allows extension outside the library (if public)
base class Vehicle {
  void drive() {
    print('Vehicle is driving');
  }
}

// Final class: cannot be extended
final class Car extends Vehicle {}

// Interface example: any class can implement it
interface class Drivable {
  void drive() {}
}
